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

So, all possible setups was found by doing a cartesian product between the dictionary groups and itself. For instance, Breakes Wildscore was combined with the first item of gearbox, rear wing, front wing, suspension sigma and engine, aftwards, with the second item, and so on. 

Each item has eight attributes that sum up to the team score. They are name, speed, cornering, power_unit, reliability and avg_pitstop_time. In order to calculate the team_score of each setup, we built a dataset of all itens, whose columns were their attributes. Then, we added a new column called team_score, that follows this formula

```
team_score = speed + cornering + power_unit + reliability + avg_pitstop_time/0.02
```

Finally, we mapped the team score of each item and created a new column called sum_team_score on the dataset setups, that represents the sum of each items team score. With this column added, it was possible to plot the histogram Frequency x Team Score. We choose 880 as the cutoff of this histogram because this value represents a few amount of setups, and those are the game's best, given their team score.

## Task 2


## Task 3


## Task 4