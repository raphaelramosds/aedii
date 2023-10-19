
# Results explanation

Here you can find explanation Week 4 assignment project's results

## Query 1 (Q1)

- Function: get_laptops_with_price_within(self, min_price, max_price)
- Objective: retrieve a list of laptops within a specified price range.
- Result: I've requested all laptops whose prices were between 1000 and 2000, and this function sucessfully achieved it, as you can see at Testing section of the code solution present on [2]
- Complexity analysis: let n (amount of laptops)

| Notation  | Complexity | Explanation                                                                                                                                                                          |
|-----------|------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Big O     | O(n)       | If f(n) defines the behavior of Q1, then g(n) = n will be its upper bound limit assintotically, since this algorithm has to iterate over each element on a list of size n |
| Big Omega | Ω(n)       | If f(n) defines the behavior of Q1, then g(n) = n will be its lower bound limit assintotically, by the same reason                                                        |
| Big Theta | Θ(n)       | If f(n) defines the behavior of Q1, then f(n) will assintotically stand between g1(n) = c1.g(n) and g2(n) = c2.g(n), where c1 and c2 are real numbers, and g(n) = n       |


## Query 2 (Q2)

- Function: find_the_cheapest_laptop_with(self, ram, memory)
- Auxiliar functions: _get_spec_from_memory(self, string) and _get_spec_from_ram(self, spec)
- Objective: find the cheapest laptop with specification
- Result: I've requested the cheapest laptop with 8GB RAM and 256GB SSD. Then, I've requested another one with the same amount of RAM, but with 128GB SSD + 2TB HDD. For both queries, this function returned correct results, as you can see at Testing section of the code solution present on [2]
- Complexity analysis: let n (amount of laptops) and m (length of memory string)

| Notation  | Complexity | Explanation                                                                                                                                                                                                                         |
|-----------|------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Big O     | O(nm)      | If f(n,m) defines the behavior of Q2, then g(n,m) = nm will be its upper bound limit assintotically, since this algorithm has to iterate over each caractere of a string with length m, for each element on a list of size n |
| Big Omega | Ω(nm)      | If f(n,m) defines the behavior of Q2, then g(n,m) = nm will be its lower bound limit assintotically, by the same reason                                                                                                      |
| Big Theta | Θ(nm)      | If f(n,m) defines the behavior of Q2, then f(n,m) will assintotically stand between g1(n,m) = c1.g(n,m) and g2(n,m) = c2.g(n,m), where c1 and c2 are real numbers, and g(n,m) = nm                                                     |

> Notice that _get_spec_from_ram(self, spec) has a constant time complexity, since spec represents a small string of, at most, four caracteres. Therefore, assintotically the runtime of _get_spec_from_ram(self, spec) does not depend on spec
