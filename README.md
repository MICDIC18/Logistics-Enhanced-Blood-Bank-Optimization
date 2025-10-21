# Logistics-Enhanced-Blood-Bank-Optimization


University project for the Logistics course focused on the optimization of blood transportation using AMPL and CPLEX.  
The goal of the project is to design and optimize a distribution network for blood units from supply centers to hospitals, minimizing both transportation costs and the number of routes used.

##  Project Overview
The project includes:
- **Mathematical modeling** of the blood transportation network as an Integer Linear Programming (ILP) problem.  
- **AMPL model implementation** and optimization using **CPLEX**.  
- **Enhanced model variant** introducing a budget constraint and an additional objective function minimizing the number of active arcs.  
- **Comparative analysis** between the base and enhanced models through computational experiments.

##  Repository Structure
├── File MOD/
│ ├── EB.mod # Base AMPL model
│ ├── EnhancedBlood.mod # Enhanced model with budget constraint and arc minimization
│
├── File .dat/
│ ├── EB.dat # Input data for base model
│ ├── EnhancedBlood.dat # Input data for enhanced model
│
├── logistics_report.pdf # Final project report (includes formulation and results)
├── README.md # Project documentation


## Tools and Technologies
- **AMPL** – for model formulation  
- **IBM ILOG CPLEX** – for optimization and solving ILP  
- **Linear and Mixed Integer Programming** concepts

## Learning Objectives
This project was developed as part of the *Logistics Optimization* university course, aimed at understanding:
- Modeling of network optimization problems  
- Implementation of constraints and objective trade-offs  
- Performance evaluation between alternative optimization formulations
