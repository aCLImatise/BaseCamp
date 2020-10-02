class: CommandLineTool
id: umi_simulator.cwl
inputs:
- id: in_pcr_cycle
  doc: 'number of PCR cycles (default: 10)'
  type: long
  inputBinding:
    prefix: --pcr-cycle
- id: in_umi_length
  doc: 'length of UMI (default: 18)'
  type: long
  inputBinding:
    prefix: --umi-length
- id: in_pool_size
  doc: "initial pool size (number of molecules before PCR)\n(default: 100)"
  type: long
  inputBinding:
    prefix: --pool-size
- id: in_output_size
  doc: "final pool size (sequencing depth, i.e. number of\nreads sampled from the\
    \ PCR amplified pool) (default:\n100)"
  type: long
  inputBinding:
    prefix: --output-size
- id: in_amplification_rate
  doc: "successful rate of PCR amplification. The actual\namplification rate is uniformally\
    \ distributed between\nthis number and 1 (default: 0.8)"
  type: long
  inputBinding:
    prefix: --amplification-rate
- id: in_pcr_error
  doc: 'error rate of PCR amplification (default: 3e-05)'
  type: double
  inputBinding:
    prefix: --pcr-error
- id: in_sequencing_error
  doc: 'error rate of sequencing (default: 0.001)'
  type: double
  inputBinding:
    prefix: --sequencing-error
- id: in_task
  doc: "tasks to simulate multiple conditions. Other PCR-\nrelated arguments are ignored\
    \ when this option is used\n(default: None)"
  type: string
  inputBinding:
    prefix: --task
- id: in_task_rep
  doc: 'number of replicates when doing tasks (default: 100)'
  type: long
  inputBinding:
    prefix: --task-rep
- id: in_cpu
  doc: 'Tasks supporting multiprocessing. (default: 16)'
  type: long
  inputBinding:
    prefix: --cpu
- id: in_seed
  doc: 'starting seed (default: 0)'
  type: long
  inputBinding:
    prefix: --seed
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- umi_simulator
