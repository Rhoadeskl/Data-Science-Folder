# Module 2.9 Data Exploration 

# 2.9.2 Data Exploration Part 1 

ggplot(train_accidents, aes(x=Month)) + geom_bar()
ggplot(train_accidents, aes(x=State)) + geom_bar()
TXtrains <- train_accidents %>% filter(State == "TX") %>% arrange(EpqDamg)
ggplot(TXtrains, aes(x=Month, y=EqpDamg)) + geom_boxplot(by="Month") 

install.packages("gapminder")
library(gapminder)
head(gapminder)
levels(gapminder$country)
unique(gapminder$year)
ggplot(gapminder, aes(x=factor(year), y=pop)) + geom_boxplot()
ggplot(gapminder, aes(x=factor(year), y=pop)) + geom_boxplot() + scale_y_log10()
gm.big <- gapminder %>%
  filter(year == 2007) %>%
  arrange(desc(pop))
head(gm.big, n=10)
tail(gm.big, n=10)
ggplot(gapminder, aes(x=factor(year), y= gdpPercap)) + geom_boxplot()
summary(gapminder)
# 3rd Qu - 1st Qu = X (9325.5 - 1202.1 = 8123.4)
# X * 1.5 = Y (8123.4 * 1.5 = 12185.1)
# Y + 3rd Qu = Z (12185.1 + 9325.5 = 13988.25)
filter(gapminder, gdpPercap > 13988)
ggplot(gapminder, aes(x=factor(year), y=lifeExp)) + geom_boxplot()
filter(gapminder, lifeExp < 28)

# 2.9.3 Data Exploration Part 2 

ggplot(TXtrains) + geom_line(aes(x=Day, y=EqpDamg)) + ylab("Equipment Damage in Dollars") + xlab("Day of the Month") + ggtitle("Equipment Damage in Dollars by Day of the Month")
TXilCAtrains <- train_accidents %>% filter(State == c("TX", "IL", "CA")) %>% arrange(EqpDamg)
EquipmentDamage <- ggplot(TXilCAtrains) + geom_line(aes(x=Day, y=EqpDamg, color=State)) + ylab("Equipment Damage in Dollars") + xlab("Day of the Month") + ggtitle("Eqipment Damage in Dollars by Day of the Month per State")
library("gridExtra")
TrackDamage <- ggplot(TXilCAtrains) + geom_line(aes(x=Day, y=TrkDamg, color=State)) + ylab("Equipment Damage in Dollars") + xlab("Day of the Month") + ggtitle("Equipment Damage in Dollars by Day of the Month per State")
TrackDamage
grid.arrange(EquipmentDamage, TrackDamage, ncol=1)
ggplot(TXilCAtrains, aes(x=Day, y=EqpDamg, color=State)) + geom_line() + geom_point(aes(size=CarsDer))

gm_Angola <- filter(gapminder, country == "Angola")
head(gm_Angola)
ggplot(gm_Angola) + geom_line(aes(x=year, y=lifeExp)) + ylab("Life Expectancy") + ggtitle("Life Expectatncy in Angola")
ggplot(gm_Angola) + geom_line(aes(x=year, y=gdpPercap)) + ylab("Per Capita GDP") + ggtitle("GDP in Angola")
gm_Africa4 <- filter(gapminder, country %in% c("Angola", "Ghana", "Ethiopia", "South Africa"))
gmAfricaClean <- select(gm_Africa4, country, year, lifeExp, gdpPercap)
head(gmAfricaClean)
gm_AfricaClean <- gapminder %>% filter(country %in% c("Angola", "Ghana", "Ethiopia", "South Africa")) %>% select(country, year, lifeExp, gdpPercap)
ggplot(gm_AfricaClean) + geom_line(aes(x=year, y=lifeExp, color=country)) + ylab("Life Expectancy") + ggtitle("Life Expectency in Four Countries")
install.packages("gridExtra")
library("gridExtra")
life_exp <- ggplot(gm_AfricaClean) + geom_line(aes(x = year, y = lifeExp, color = country)) + ylab("Life Expectancy")
GDP <- ggplot(gm_AfricaClean) + geom_line(aes(x = year, y = gdpPercap, color = country)) + ylab("Per Capita GDP") 
grid.arrange(life_exp, GDP, ncol = 1)
ggplot(gm_AfricaClean, aes(x=year, y=lifeExp, color=country)) + geom_line() +geom_point(aes(size=gdpPercap)) + ylab("Life Expectancy") + ggtitle("Life Expectancy and GDP in Four Countries")
ggplot(gm_AfricaClean, aes(x=gdpPercap, y=lifeExp, color=country)) + geom_point()
ggplot(gm_AfricaClean, aes(x=gdpPercap, y=lifeExp, color=country)) + geom_point() + geom_line()
ggplot(gm_AfricaClean, aes(x=gdpPercap, y=lifeExp, color=country)) + geom_point() + geom_path()
ggplot(gm_AfricaClean, aes(x=gdpPercap, y=lifeExp, color=country)) + geom_point(aes(alpha=year)) + geom_path()
ggplot(gm_AfricaClean, aes(x=gdpPercap, y=lifeExp, color=country)) + geom_point(aes(alpha=year), size=3) + geom_path() + scale_alpha(range=c(0.3, 1.0))
ggplot(gm_AfricaClean, aes(x=gdpPercap, y=lifeExp, color=country)) + geom_point(aes(alpha=year), size=3) + geom_path() + scale_alpha(range=c(0.3, 1.0)) + xlab("Per capita GDP") + ylab("Life Expectancy")

# 2.9.4 Data Exploration Part 3

TrainsMedians <- TXilCAtrains %>% group_by(State) %>% summarize(EqpDamgMed = median(EqpDamg))

gm_medians <- gapminder %>% filter(continent == "Africa") %>% group_by(year) %>% summarise(life_med = median(lifeExp), gdp_med = median(gdpPercap))
gm_medians


