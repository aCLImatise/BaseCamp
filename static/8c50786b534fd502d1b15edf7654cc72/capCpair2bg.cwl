class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/capCpair2bg.cwl
inputs:
- id: pairfile_input_file
  doc: pairfile       is the input file name; can use this option more than once to
    combine multiple targets into one
  type: boolean
  inputBinding:
    prefix: -i
- id: bgfile_file_name
  doc: bgfile         is the file name for the output bedGraph
  type: boolean
  inputBinding:
    prefix: -o
- id: targetname_name_target
  doc: targetname     is the name of the target
  type: boolean
  inputBinding:
    prefix: -n
- id: chromstartend_genomic_location
  doc: chrom:start-end  is the genomic location of the target site; can use this option
    more than once if multiple pair files are specified.
  type: boolean
  inputBinding:
    prefix: -t
- id: inter_chrom
  doc: flag to specify interchromosomal interactions are present
  type: boolean
  inputBinding:
    prefix: --interchrom
outputs: []
cwlVersion: v1.1
baseCommand:
- capCpair2bg
