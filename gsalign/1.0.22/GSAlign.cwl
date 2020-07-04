class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/GSAlign.cwl
inputs:
- id: int_number_threads
  doc: INT     number of threads [8]
  type: boolean
  inputBinding:
    prefix: -t
- id: str_set_prefix
  doc: STR     Set the prefix of the output files [output]
  type: boolean
  inputBinding:
    prefix: -o
- id: fmt
  doc: INT     Set the output format 1:maf, 2:aln [1]
  type: boolean
  inputBinding:
    prefix: -fmt
- id: id_y
  doc: INT     Set the minimal sequence identity (0-100) of a local alignment [70]
  type: boolean
  inputBinding:
    prefix: -idy
- id: slen
  doc: INT     Set the minimal seed length [15]
  type: boolean
  inputBinding:
    prefix: -slen
- id: alen
  doc: INT     Set the minimal alignment length [200]
  type: boolean
  inputBinding:
    prefix: -alen
- id: ind
  doc: INT     Set the maximal indel size [25]
  type: boolean
  inputBinding:
    prefix: -ind
- id: clr
  doc: INT     Set the minimal cluster size [200]
  type: boolean
  inputBinding:
    prefix: -clr
- id: unique
  doc: Output unique alignment only [false]
  type: boolean
  inputBinding:
    prefix: -unique
- id: sen
  doc: Sensitive mode [False]
  type: boolean
  inputBinding:
    prefix: -sen
- id: dp
  doc: Output Dot-plots
  type: boolean
  inputBinding:
    prefix: -dp
- id: set_one_one
  doc: set one on one aligment mode[false]
  type: boolean
  inputBinding:
    prefix: -one
- id: gp
  doc: STR     Specify the path of gnuplot
  type: boolean
  inputBinding:
    prefix: -gp
outputs: []
cwlVersion: v1.1
baseCommand:
- GSAlign
