# Contribution
The main contribution of this bachelor thesis is conducting an experiment in observing the behaviour of [LogDQN (Seijen and Vatemi, 2020)](https://proceedings.neurips.cc/paper/2019/file/eba237eccc24353ccaa4d62013556ac6-Paper.pdf) learning agent in discrete state space. The task is the mathematical representation of protein folding problem, bidimensional hydrophobic-polar model. In short, given a sequence of H and P symbols with length N, the objective is to find the best permutation of protein stuctures that has the lowest free energy value. The research journal, however, not published for public property. 

# Motivation
The work from [LogDQN (Seijen and Vatemi, 2020)](https://proceedings.neurips.cc/paper/2019/file/eba237eccc24353ccaa4d62013556ac6-Paper.pdf) shows a potential of lower discount factor to perform better in specific task scenario ([See section 3. Analysis of Discount Factor Effects](https://proceedings.neurips.cc/paper/2019/file/eba237eccc24353ccaa4d62013556ac6-Paper.pdf)). Therefore, the main motivation in this research is to assume in longer protein sequence that result in exponential grows of the state space, there exist a specific scenario that lower discount factor will performs better in finding the lowest enegy value structure. To establish this assumtion, we leverage LogDQN that enable lower discount factor to work by performing logarithming mapping function to the action-value function Q-value.
</br>
Below I show a screenshot of figure 1. in section 3. on [LogDQN (Seijen and Vatemi, 2020)](https://proceedings.neurips.cc/paper/2019/file/eba237eccc24353ccaa4d62013556ac6-Paper.pdf).
</br>
<img src="https://user-images.githubusercontent.com/58515206/134119706-f0182d84-c87b-4bf5-8e9b-bbd2f6a35c5f.png" alt="" data-canonical-src="https://user-images.githubusercontent.com/58515206/134119706-f0182d84-c87b-4bf5-8e9b-bbd2f6a35c5f.png" width="500" height="250" />


## User Interface  

The front-end code is in guiv2.py. It include all the features to either train (Figure 1.), configure the hyper-parameter (Figure 2.), simulate (Figure 3.) the folding process and evaluate the result of specific agent (Figure 4.). However, these features are not optimized well enough which occasionally cause a slow running experiences, especially when training/loading model. Therefore, it is highly recommend to perform any of these functionality directly from the back-end code.

Figure 1. Main Menu 
</br>
<img src="https://user-images.githubusercontent.com/58515206/133737458-c30d2988-0a5a-49ce-9e75-ef88b8ecf43a.png" alt="" data-canonical-src="https://user-images.githubusercontent.com/58515206/133737458-c30d2988-0a5a-49ce-9e75-ef88b8ecf43a.png" width="350" height="280" />

Figure 2. Hyper-parameter Setting 
</br>
<img src="https://user-images.githubusercontent.com/58515206/133739674-8401bd7e-4212-4221-8f6d-e33045da296b.png" alt="" data-canonical-src="https://user-images.githubusercontent.com/58515206/133739674-8401bd7e-4212-4221-8f6d-e33045da296b.png" width="350" height="280" />

Figure 3. Simulate Folding Process 
</br>
<img src="https://user-images.githubusercontent.com/58515206/133739813-129eab7e-9fdb-4342-bc41-e2b80a394641.png" alt="" data-canonical-src="https://user-images.githubusercontent.com/58515206/133739813-129eab7e-9fdb-4342-bc41-e2b80a394641.png" width="350" height="280" />

Figure 4. Evaluate  
</br>
<img src="https://user-images.githubusercontent.com/58515206/133739873-e05a6f12-594f-4770-80d3-a62613a6996e.png" alt="" data-canonical-src="https://user-images.githubusercontent.com/58515206/133739873-e05a6f12-594f-4770-80d3-a62613a6996e.png" width="375" height="150" />

## Result
The result of this experiment shows that LogDQN agent has similar performance to DQN agent with each was given the best hyper-parameter setting. Figure 5 shows the folding result of LogDQN agent following the optimial policy with 0.1 discount factor. In addition, as what have been proposed by (Seijen et al., 2019), the logarithmic mapping operation to the Q-value able to achieve decent performance with lower discount factor rather than regular Q-value from DQN agent (Figure 6.)

</br>
Figure 5. Folding Result Before and After Training LogDQN Agent with Discount 0.1
</br>
<img src="https://user-images.githubusercontent.com/58515206/133741100-9627d128-48d9-484a-98f5-b860b76fa6c3.png" alt="" data-canonical-src="https://user-images.githubusercontent.com/58515206/133741100-9627d128-48d9-484a-98f5-b860b76fa6c3.png" width="400" height="175" />

Figure 6. Learning Curve Comparison Between LogDQN and DQN with Discount 0.1 and 0.3 on Toy Dataset
</br>
<img src="https://user-images.githubusercontent.com/58515206/133741885-df360d37-f1f6-4cfb-9d7a-de98b9fc663e.png" alt="" data-canonical-src="https://user-images.githubusercontent.com/58515206/133741885-df360d37-f1f6-4cfb-9d7a-de98b9fc663e.png" width="450" height="450" />

## Team Member
* Alvin Setiadi 
* Edwan Santoso
* Kelvin Chayadi

I (Alvin Setiadi) responsible mostly for the code development in experimenting and evaluating results, while Edwan Santoso and Kelvin Chayadi collaborated mainly in constructing thesis paper. 


## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details


