# Week 13 

## Tourist Route Optimization in Cities with Multiple Attractions

### Authors:
- Raphael Ramos
- Ernane Ferreira
- Thiago Lopes

---

## Project Description:

The goal of this project is to optimize a tourist route in a city with multiple attractions using algorithms and data structures. The main components of the project include:

1. **Selection of City and Tourist Attractions:**
   - The city selected for this project is Natal, Rio Grande do Norte, Brazil.
   - Tourist attractions include:
      - Catedral Metropolitana
      - Museu Câmara Cascudo
      - Teatro Alberto Maranhão
      - Arena das Dunas
      - Centro de Turismo

2. **Implementation of Simulated Annealing Algorithm:**
   - Utilizes the Simulated Annealing algorithm to find an optimized route.
   - The algorithm starts and ends at the Arena das Dunas.

3. **Development of User Interface based on Folium and Osmnx:**
   - Uses Folium and Osmnx to create a user interface for visualizing the optimized tourist route on a map.

4. **Simulation and Testing of Routes:**
   - Simulates and tests the optimized routes to ensure efficiency and pleasant experiences for visitors.

5. **Visualization of the Optimized Route:**
   - Provides a visual representation of the optimized tourist route.Certainly! Here's a concise version about Simulated Annealing for inclusion in a README:

## Simulated Annealing

Simulated Annealing is a stochastic optimization technique inspired by the physical process of metal annealing. Designed to find approximate solutions for global optimization problems, it is particularly useful in situations where finding the exact solution is computationally challenging.

### Key Steps:

1. **Initial Solution Generation:** Start with an initial solution.

2. **Iterations and Perturbations:** Make small perturbations to current solutions to explore the solution space.

3. **Objective Function Evaluation:** Evaluate the objective function for the new solution.

4. **Solution Acceptance:** Accept the new solution with a decreasing probability over time and simulated temperature, allowing acceptance of worse solutions.

5. **Temperature Update:** Gradually reduce the temperature to control the probability of accepting worse solutions.

6. **Stopping Criterion:** Continue iterating until meeting a stopping criterion, such as a fixed number of iterations or a minimum temperature.
  
### Selected Route for Analysis:

The route selected for analysis covers the following attractions: Catedral Metropolitana, Museu Câmara Cascudo, Teatro Alberto Maranhão, Arena das Dunas, and Centro de Turismo.

<img src="assets/route.png" alt="Selected Route" width="600"/>

### Expected Results:

- An optimized tourist route that offers an efficient and enjoyable experience for visitors.
- Practical application and in-depth understanding of graph theory with optimization algorithms.

---

## Acknowledgment:

This project's code is based on the work available at [Conquering Seven Hills: Route Optimization with SA](https://omyllymaki.medium.com/conquering-seven-hills-route-optimization-with-sa-d96ace682e2c). We appreciate the valuable reference provided by this source.

---

## Optimized Route and Results:

| Base Parameters                             | Conservative Adjustment                      |
|---------------------------------------------|-----------------------------------------------|
| ![Base Parameters](assets/base_adjustment/base_parameters_temperature.png) | ![Conservative Adjustment](assets/conservative_adjustment/conservative_adjustment_temperature.png) |

| Moderate Adjustment                           | Aggressive Tuning                            |
|-----------------------------------------------|---------------------------------------------|
| ![Moderate Adjustment](assets/moderate_adjustment/moderate_Adjustment_temperature.png) | ![Aggressive Tuning](assets/agressive_tuning/aggressive_tuning_temperature.png) |

---

To access the code produced for this project, you can visit the [Assignment](https://colab.research.google.com/drive/15ic0w4d44vR3cYeJKV2gTtpjIrgKUA39?usp=drive_link) on Google Colab.

---

## Divergence in Optimal Routes

### Differences in Routes
Significant disparities were observed in the optimized routes and total distances covered across various parameter configurations. Each parameter setting in terms of `max_iter` and `max_iter_without_improvement` resulted in a distinct route, underscoring the influence of these values on the quest for the optimal solution. The alterations in parameters noticeably impacted the quality of the solutions, as evidenced by variations in the total distances traveled. Specifically:

- **Base Parameters:** The route obtained was [3, 2, 0, 4, 1, 3] with a total distance of 15.345993.
- **Conservative Adjustment:** The optimized route changed to [3, 1, 0, 4, 2, 3] with a total distance of 15.534664.
- **Moderate Adjustment:** The resulting route was [3, 4, 2, 0, 1, 3] with a reduced total distance of 14.326883.
- **Aggressive Tuning:** The most optimized route was [3, 0, 2, 4, 2, 3] with the smallest total distance of 14.119251.

### Insights from Results

The outcomes suggest that fine-tuning the parameters can substantially impact the quality of the solution produced by the optimizer. Higher values of `max_iter` and `max_iter_without_improvement` allowed for a more extensive exploration, leading to solutions with reduced total distances. However, it's crucial to note that increasing these values may also result in longer execution times. Therefore, the choice of parameters should be guided by a thoughtful consideration of the trade-off between solution quality and computational efficiency, tailored to the specific requirements of the given problem.

## Variability in Optimal Paths

### Notable Discrepancies in Paths
Evident variations were observed in the optimized paths for different parameter configurations. The sequences of hills in the optimal route differed with each adjustment, reflecting the optimizer's sensitivity to the values of `max_iter` and `max_iter_without_improvement`. The optimal routes for each configuration were as follows:

- **Base Parameters:** [3, 2, 0, 4, 1, 3]
- **Conservative Adjustment:** [3, 1, 0, 4, 2, 3]
- **Moderate Adjustment:** [3, 4, 2, 0, 1, 3]
- **Aggressive Tuning:** [3, 0, 2, 4, 2, 3]

Additionally, the total distances covered were different for each configuration, indicating a significant influence of the parameters on solution quality.

### Conclusions Drawn from Results

Based on the analysis of the "Cost change x Probability x Temperature" graph and the outcomes of the optimized routes, several conclusions can be drawn:

- **Base Parameters:** Few and spaced points on the graph suggest limited exploration, potentially leading to suboptimal solutions, as indicated by the relatively high total distance.
- **Conservative Adjustment:** Presence of points with varying shades of blue and red suggests a more balanced exploration of the solution space. The higher quantity of red points may indicate a more intense exploration locally.
- **Moderate Adjustment:** Spaced points may indicate a more extensive exploration of the solution space. The presence of points between -2 and 5 suggests a broader search, enabling the discovery of higher-quality solutions.
- **Aggressive Tuning:** A significant number of points with blue, violet, and red shades, concentrated between 0 and 6, suggests an intensive and extensive exploration of the solution space. This resulted in the lowest total distance, indicating a more optimized solution.
