class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/ribo_stack.cwl
inputs:
- id: output
  doc: 'output directory; default: /tmp/tmpdvlbjbbn'
  type: string
  inputBinding:
    prefix: --output
- id: bam
  doc: 'BAM file; tested with BWA output; default: None'
  type: string
  inputBinding:
    prefix: --bam
- id: ribose_ed_dir
  doc: look for BAM file in this riboSeed output directory
  type: string
  inputBinding:
    prefix: --riboSeed_dir
- id: n_samples
  doc: 'Number of regions to compare rDNA depth to; must be greater than 1; default:
    10'
  type: string
  inputBinding:
    prefix: --n_samples
- id: experiment_name
  doc: 'prefix for results files; default: riboStack'
  type: string
  inputBinding:
    prefix: --experiment_name
- id: infer
  doc: 'If --infer, ignore the name and length of reference sequence, using the BAM
    header instead default: False'
  type: boolean
  inputBinding:
    prefix: --infer
- id: verbosity
  doc: 'Logger writes debug to file in output dir; this sets verbosity level sent
    to stderr. 1 = debug(), 2 = info(), 3 = warning(), 4 = error() and 5 = critical();
    default: 2'
  type: string
  inputBinding:
    prefix: --verbosity
- id: ribo_scan_dir
  doc: We need the gff and fasta files from your riboScan run.
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- ribo
- stack
