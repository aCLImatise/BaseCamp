class: CommandLineTool
id: umi_simulator.cwl
inputs:
- id: pcr_cycle
  doc: 'number of PCR cycles (default: 10)'
  type: string
  inputBinding:
    prefix: --pcr-cycle
- id: umi_length
  doc: 'length of UMI (default: 18)'
  type: string
  inputBinding:
    prefix: --umi-length
- id: pool_size
  doc: 'initial pool size (number of molecules before PCR) (default: 100)'
  type: string
  inputBinding:
    prefix: --pool-size
- id: output_size
  doc: 'final pool size (sequencing depth, i.e. number of reads sampled from the PCR
    amplified pool) (default: 100)'
  type: string
  inputBinding:
    prefix: --output-size
- id: amplification_rate
  doc: 'successful rate of PCR amplification. The actual amplification rate is uniformally
    distributed between this number and 1 (default: 0.8)'
  type: string
  inputBinding:
    prefix: --amplification-rate
- id: pcr_error
  doc: 'error rate of PCR amplification (default: 3e-05)'
  type: string
  inputBinding:
    prefix: --pcr-error
- id: sequencing_error
  doc: 'error rate of sequencing (default: 0.001)'
  type: string
  inputBinding:
    prefix: --sequencing-error
- id: task
  doc: 'tasks to simulate multiple conditions. Other PCR- related arguments are ignored
    when this option is used (default: None)'
  type: string
  inputBinding:
    prefix: --task
- id: task_rep
  doc: 'number of replicates when doing tasks (default: 100)'
  type: string
  inputBinding:
    prefix: --task-rep
- id: cpu
  doc: 'Tasks supporting multiprocessing. (default: 16)'
  type: string
  inputBinding:
    prefix: --cpu
- id: seed
  doc: 'starting seed (default: 0)'
  type: string
  inputBinding:
    prefix: --seed
outputs: []
cwlVersion: v1.1
baseCommand:
- umi_simulator
