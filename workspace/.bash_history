accelergyTables -r /home/workspace/lab4/PIM_estimation_tables
cd designs
cd ../
ls
cd workspace/
ls
cd lab4/designs/
ls
cd singlePE_ag
accelergy arch/ -o output -v 1
cd ../singlePE_os/
accelergy arch/ -o output -v 1
cd ../singlePE_ag/
  # ==========================================================================
  # Please update this file to reflect the addition of address generator
  # ==========================================================================
compound_components:
  version: 0.3
  classes:
    - name: smart_storage
      attributes:        # default attribute values (can be overridden by architecture specifications)
        technology: 45nm
        latency: 1ns
        depth: 24
        width: 16
      subcomponents:     # a list of all components that this compound component is composed of (one in this example)
        - name: storage
          class: regfile # primitive class defined in primitive class library
          attributes:    # lower-level attributes that are mapped from upper level
            technology: technology
            latency: latency
            depth : depth
            width: width
        # ============================================================
        # Add your hardware description for the address generator here
        # ============================================================
      actions:           # definitions of the compound actions in terms of the lower-level actions
        - name: read     # random read compound action
          subcomponents:
            - name: storage
              actions:
                - name: read
                  arguments:
                    address_delta: 1  # action argument: stands for the amount of toggling on address wires
                    data_delta: 1     # action argument: stands for the amount of toggling on data wires
            # ======================================================
            # Add the subaction related to address_generator here
            # ======================================================
        - name: write     # random write compound action
          subcomponents:
            - name: storage
              actions:
                - name: write
                  arguments:
                    address_delta: 1  # action argument: stands for the amount of toggling on address wires
                    data_delta: 1     # action argument: stands for the amount of toggling on data wires
            # ======================================================
            # Add the subaction related to address_generator here
            # ======================================================
accelergy arch/ -o output -v 1
accelergy arch/ -o output -v 1
ls
pwd
cd lab4/designs/PIM
ls
accelergy arch/
accelergyTables -r workspace/lab4/PIM_estimation_tables
accelergyTables -r /home/workspace/lab4/PIM_estimation_tables
