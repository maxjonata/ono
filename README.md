# Project Ono: Procedural Universe Simulator

This project aims to create a game engine and game centered around procedurally generated universes, complex interactions, and a novel peer-to-peer networking system.  Inspired by modular systems like Space Station 13 and advanced procedural generation like No Man's Sky, Ono strives for high complexity and realistic interactions between simulated systems.

## Overall Concept

Ono simulates universes with procedurally generated components and interactions, aiming for a highly interactive and dynamic experience. The core concept revolves around the creation of diverse, evolving universes with rich, emergent gameplay.  Players will interact within these procedurally generated worlds, influencing the environment and experiencing the consequences of their actions within a complex, simulated ecosystem.


## Key Mechanics

### Procedural Generation

* **Universes:** Entire universes, from physical laws to planetary bodies and ecosystems, are generated procedurally.
* **Components:**  Universe components (planets, creatures, structures, etc.) are built from modular characteristics, allowing for vast variability.
* **Interactions:**  Algorithms generate complex interactions between entities, ecosystems, and the environment, leading to emergent behavior and dynamic stories.
* **Algorithms:** Advanced algorithms, potentially leveraging machine learning, will be employed to generate diverse and coherent worlds.

### Hyperclique P2P

* **Low Latency:** A custom peer-to-peer network optimized for minimal latency, ensuring smooth multiplayer experiences.
* **Tick-Based Synchronization:** Action synchronization uses a tick-based model (similar to EVE Online) for consistency.
* **Local Simulation:**  Local simulation will create the illusion of simultaneity for each player.

### Machine Learning

* **Complex Interactions:** Machine learning will enhance the generation of complex interactions, including dynamic ecosystems and NPC behaviors.
* **Adaptive Algorithms:** Algorithms learn and adapt generated components, maximizing variability while maintaining universe cohesion.


## Tools and Technologies

* **Programming Language:** Rust
    * High performance, memory safety, and concurrency features are crucial for this project.
    * Growing ecosystem for networking and machine learning.
* **Libraries:**
    * **Machine Learning:** Tch-rs (PyTorch bindings) or ONNX for ML integration.
    * **Procedural Generation:** Noise-rs (Perlin/Simplex Noise).
    * **Networking:** Tokio or Quinn for P2P networking.
* **Custom Engine:**
    * An ECS (Entity-Component-System) based engine will be developed to provide maximum control over procedural generation and system interactions.


## Development Structure

1. **Phase 1: Core Engine**
    * Establish the foundational engine, focusing on procedural generation and ECS.
    * Implement the low-latency P2P infrastructure.

2. **Phase 2: Machine Learning Integration**
    * Incorporate machine learning to enrich procedural generation.
    * Integrate systems that facilitate adaptive simulations within generated universes.

3. **Phase 3: Refinement and Scalability**
    * Polish the engine to support future expansions and customization.
    * Thoroughly test P2P scalability and the capacity to generate massive universes.


## Project Directory Structure (Onion Architecture)

This project utilizes the Onion Architecture to organize code and manage dependencies. Here's a breakdown of the directory structure:

*   **application/:** Contains use cases and application logic. This layer orchestrates interactions between the domain and infrastructure.
*   **domain/:** Holds the core business logic, including entities, value objects, and interfaces. It's the heart of the system and is independent of external concerns.
*   **infrastructure/:** Deals with external concerns such as databases, networking, and UI. This layer provides implementations for the interfaces defined in the domain layer.
    
    *This structure ensures that the core domain logic is isolated from external concerns, making the codebase more maintainable, testable, and flexible.*





## Design Philosophy

* **Modularity:** Universes and components are designed for easy expansion and alteration.
* **Interactivity:** Emphasis on deep simulations with complex system interactions, creating emergent gameplay.
* **Performance:** High performance is crucial, especially for massive simulations, necessitating hardware-specific optimizations.


## Open Source Notice

This code is open source, but the project is not open for use.  No copyright claim is asserted on the source code itself. However, **commercial use of this project or its derivatives is strictly prohibited.**


## Game Terminology

*   **white_hole:** Refers to a content creator within the game, someone who created an entity, component, universe, etc. within Ono, or "Ono" if it was done procedurally by the game itself.
