class: CommandLineTool
id: abritamr.cwl
inputs:
- id: mdu_qc
  doc: 'Set if running on MDU QC data. If set please provide the MDU QC .csv as further
    input and an additional output suitable for lims input will be provided. (default:
    False)'
  type: boolean
  inputBinding:
    prefix: --mduqc
- id: qc
  doc: 'Name of checked MDU QC file. (default: mdu_qc_checked.csv)'
  type: string
  inputBinding:
    prefix: --qc
- id: positive_control
  doc: 'Path to positive control sequence - must be set if using -m (default: )'
  type: string
  inputBinding:
    prefix: --positive_control
- id: singularity
  doc: 'If using singularity container for AMRfinderplus (default: False)'
  type: boolean
  inputBinding:
    prefix: --Singularity
- id: singularity_path
  doc: 'Path to the singularity container for AMRfinderplus, if empty will defualt
    to shub://phgenomics- singularity/amrfinderplus (default: )'
  type: string
  inputBinding:
    prefix: --singularity_path
- id: contigs
  doc: 'Tab-delimited file with sample ID as column 1 and path to assemblies as column
    2 (default: )'
  type: string
  inputBinding:
    prefix: --contigs
- id: amr_finder_output
  doc: 'Tab-delimited file with sample ID as column 1 and path to amr_finder output
    files as column 2 (default: )'
  type: string
  inputBinding:
    prefix: --amrfinder_output
- id: workdir
  doc: 'Working directory, default is current directory (default: /tmp/tmpki82jjf6)'
  type: string
  inputBinding:
    prefix: --workdir
- id: resources
  doc: 'Directory where templates are stored (default: /tmp/tmpki82jjf6/lib/python3.6/site-packages/abritamr)'
  type: string
  inputBinding:
    prefix: --resources
- id: drug_classes
  doc: 'Path to file (default: /tmp/tmpki82jjf6/lib/python3.6/site- packages/abritamr/db/refgenes.csv)'
  type: string
  inputBinding:
    prefix: --drug_classes
- id: jobs
  doc: 'Number of AMR finder jobs to run in parallel. (default: 16)'
  type: string
  inputBinding:
    prefix: --jobs
- id: keep
  doc: 'If you would like to keep intermediate files and snakemake log. Default is
    to remove (default: False)'
  type: boolean
  inputBinding:
    prefix: --keep
outputs: []
cwlVersion: v1.1
baseCommand:
- abritamr
