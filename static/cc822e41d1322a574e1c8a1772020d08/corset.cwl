class: CommandLineTool
id: ../../../corset.cwl
inputs:
- id: running_i_will
  doc: 'If running with -i corset or salmon_eq_classes, this will filter out a link
    between contigs if the link is supported by less than this many reads (performed
    sample-wise). Reads will  be reassigned uniformly to the contigs in the equivalence
    class. This option will improve runtime and memory usage, but will increase the
    number of clusters reported. Default: 1 (no filtering)'
  type: long
  inputBinding:
    prefix: -l
- id: running_i_option
  doc: 'If running with -i corset or salmon_eq_classes, this option will filter out
    reads that align to more than x contigs. Default: no filtering'
  type: long
  inputBinding:
    prefix: -x
- id: input_bam_files
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- corset
