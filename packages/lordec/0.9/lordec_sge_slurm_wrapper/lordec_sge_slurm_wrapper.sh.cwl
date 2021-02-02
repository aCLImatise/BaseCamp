class: CommandLineTool
id: lordec_sge_slurm_wrapper.sh.cwl
inputs:
- id: in_slur_m
  doc: '[-J nb_jobs | -N nb_reads_per_job] -P parallel_env_name -B lordec-build-SR-graph_PATH
    -C lordec-correct_PATH [-Q QUEUE_NAME] [-W NB_MINUTES_MAX] lordec_options...'
  type: boolean
  inputBinding:
    prefix: --slurm
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- lordec_sge_slurm_wrapper.sh
