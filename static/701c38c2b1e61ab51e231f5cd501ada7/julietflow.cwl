class: CommandLineTool
id: julietflow.cwl
inputs:
- id: in_bam_ccs_file
  doc: '[arg]  BAM CCS file to process. Required.'
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_reference_fasta_file
  doc: '[arg]  Reference FASTA file. Required.'
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_juliet_target_config
  doc: '[arg]  Juliet target config. Default=none'
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_number_cpu_cores
  doc: '[arg]  Number of CPU cores. Default=1'
  type: boolean?
  inputBinding:
    prefix: -j
- id: in_maximal_number_default
  doc: '[arg]  Maximal number of re-align iterations. Default=1'
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_target_reference_fasta
  doc: '[arg]  Target reference FASTA, per default using --ref.'
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_minimal_variant_frequency
  doc: '[arg]  Minimal variant frequency. Default=0.'
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_maximal_variant_frequency
  doc: '[arg]  Maximal variant frequency. Default=100.'
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_genomic_region_interest
  doc: '[arg]  Genomic region of interest, reads will be clipped to that region, empty
    means all reads.'
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_phase_variants
  doc: Phase variants.
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_only_report_positions
  doc: Only report known DRM positions.
  type: boolean?
  inputBinding:
    prefix: -k
- id: in_keep_temporary_files
  doc: Keep temporary files.
  type: boolean?
  inputBinding:
    prefix: -z
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- julietflow
