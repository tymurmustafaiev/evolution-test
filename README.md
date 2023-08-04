# **Swift library evolution issue**

This is the sample repo to show issue with compilation of `@propertyWrapper` code with enabled `BUILD_LIBRARY_FOR_DISTRIBUTION` flag.
I'm trying to build static swift library, and I have `propertyWrappers` in my code.

**Failing builds:**

When I enable `BUILD_LIBRARY_FOR_DISTRIBUTION` flag, compilation fails with this error:
![img.png](Readme%2Ffail1.png)

**Successful builds:**

However, if I put `Model` structure inside the `EvolutionInteractor` class, it compiles successfully.
![img.png](Readme%2Fsuccess1.png)
Same will happen if I wrapp `struct` inside another `struct` in `extension` as it was in first sample:
![success2.png](Readme%2Fsuccess2.png)