<!--- 
Hi!
Have you tried searching for your issue on the following forums?
If you have any questions, please ask them there.

Forums:
 - TLA⁺ Google Groups forum: https://groups.google.com/g/tlaplus/
 - GitHub Discussions forum: (TBA?)

Thanks!
-->

## Description
<!--- 
Provide a more detailed introduction to the issue itself, and why you consider it to be a bug. 

If you need to share a specification, either:
 - Paste it in your description between the <details> </details> tags if it's too long;
 - Send a link to a Gist, GitHub reposity, Pastebin, etc.;
-->

The TLA+ Toolbox generated empty states which did not meet expectations.
I wrote a simple TLA+ specfication, https://github.com/ybbh/tla_state.
When I used the model checker to check it, it generated empty initial states.



## Expected Behavior
<!--- Tell us what should happen -->
It should generate non-empty initial states.

## Actual Behavior
<!--- Tell us what happens instead -->
It generated empty initial states.

## Steps to Reproduce
1. git clone git@github.com:ybbh/tla_state.git
2. Toolbox: File -> Open Spec -> Add New Spec -> open state.tla
3. Toolbox: models -> New Model -> filling Temporal formula with **Spec** -> setting constants NODE_ID by **{"n1", "n2"}**
4. Toolbox: Run TLA on the model
5. Toolbox: The model checker result generated empty initial states
![result](https://github.com/ybbh/tla_state/blob/main/figures/node_2.png)

## Steps Taken to Fix
<!--- When this problem came up, what did you try before reporting it? -->

1. When I changed the constants NODE_ID by **{"n1"}**, it generated correct result.

2. The initial states would be OK if I uncomment this line in [state.tla](https://github.com/ybbh/tla_state/blob/main/state.tla).
  
    ```
      __WhyWeNeedThis == S2
    ```

## Possible Fix
<!--- Do you suggest some fix for us you haven't tried yet? -->
Possible when producing the initial state, the toolbox threw some unknown exceptions.

## Your Environment
<!--- Include as many relevant details about the environment in which you experienced the issue. -->
<!--- Remove information if not applicable -->
 - TLC version: 2.15, 2.16
 - Toolbox version: 1.8.0.202303090234, 1.7.1.202012311918
 - Operating System: Windows 10
  <!-- (Windows 10, Ubuntu 22.04, etc.) -->
