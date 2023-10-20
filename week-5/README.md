# Results explanation

Here you can find explanations of Week 5 assignment project's results

## Task 1

In order to create the Team score histogram of all setups, it was needed to list all possible setups. A setup on F1 clash game is built by 6 categories: breaks, gearbox, rear wing, front wing, suspension and engine. Each category has 48 types of different items. For example, a player could choose this setup: Breakes Wildcore (breaks), GearBox Voyage (gearbox), Rear Wing Typhoon (rear wing), Front Wing Virtue (front wing), Suspension Sigma (suspension) and Engine Cloudroar (engine). We built a dictionary called groups whose keys and values were the categories and their items, respectively. 

```
groups = {
    'Breaks': [
        'Breakes Wildcore', 
        ... 
        'Breakes Starter'
    ], 
    ...
    'Engine': [
        'Engine Cloudroar', 
        ...
        'Engine Starter'
    ]
}
```

So, all possible setups were found by doing a cartesian product between the dictionary groups and itself. For instance, Breakes Wildscore was combined with the first item of gearbox, rear wing, front wing, suspension sigma and engine, aftewards, with the second item of gearbox, and so on. 

Each item has eight attributes that sum up to the team score. These are name, speed, cornering, power_unit, reliability and avg_pitstop_time. In order to calculate the team_score of each setup, we built a dataset of all itens, whose columns were their attributes. Then, we added a new column called team_score, that follows this formula

```
team_score = speed + cornering + power_unit + reliability + avg_pitstop_time/0.02
```

Finally, we mapped the team score of each item and created a new column called sum_team_score on the dataset setups, that represents the sum of each items team score. With this column added, it was possible to plot the histogram Frequency x Team Score. We choose 880 as the cutoff of this histogram because this value represents a few amount of setups, and those are the game's best, given their team score.

## Task 2

The graph generated shows that some items appear with more frequency on setups than others. We also see that some setups shared the same item(s), which indicates that setups with greater team score adopt strategies that involves these specifically item(s). Also, we can see an almost equality of nodes length. It happened because we choose the team score as the proportional factor of each node length. Therefore, as we filtered out by team scores larger that 880, all nodes length appear to be the same. 

On the Probability Distribution Function (PDF), it's clear how balanced is the amount of nodes with large out degrees: it means that, on this subset of setups, we'll have a fair probability of take an item with big influence on the building of setups.

## Task 3

The bipartite graph shows that some attributes are less relevant to improve by the boosts than others, since their out degree are low. 

## Task 4

In order to find out the best setup, we initially picked the top two pilots, and then we identified the setup with the highest team score. Next, we applied a filter to select the bottles with attributes exceeding 20. These bottles were then integrated into the setup, and we assessed which combination yielded the highest score.

Therefore, by this metrics, we conclude that the setup

- Breakes Onyx
- GearBox Vector
- Rear Wing Typhoon
- Front Wing Virtue
- Suspension Horizon
- Engine Cloudroar	

boosted with Vice and Taurus, conducted by the drivers Lando Norris and Max Verstappen, are the best choosen in order to prioritize speed, cornering, power unit and reliability 