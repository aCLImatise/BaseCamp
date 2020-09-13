class: CommandLineTool
id: ../../../synthReadGen.cwl
inputs:
- id: in_id
  doc: ": set distribution used for insert length\n[1 = normal], 2 = poisson"
  type: long
  inputBinding:
    prefix: -id
- id: in_ld
  doc: ": set distribution used for read length\n[1 = normal], 2 = poisson"
  type: long
  inputBinding:
    prefix: -ld
- id: in_im
  doc: ': inward insert length mean [200.0]'
  type: long
  inputBinding:
    prefix: -im
- id: in_om
  doc: ': outward insert length mean [500.0]'
  type: long
  inputBinding:
    prefix: -om
- id: in_is
  doc: ': inward insert length std dev [10.0]'
  type: long
  inputBinding:
    prefix: -is
- id: in_os
  doc: ': outward insert length std dev [15.0]'
  type: long
  inputBinding:
    prefix: -os
- id: in_ip
  doc: ': probability for an inward read [0.5]'
  type: double
  inputBinding:
    prefix: -ip
- id: in_er
  doc: ': illumina error char [^]'
  type: string
  inputBinding:
    prefix: -er
- id: in_nr
  doc: ': number of reads to make [1000]'
  type: long
  inputBinding:
    prefix: -nr
- id: in_rl
  doc: ': read length mean [85.0]'
  type: long
  inputBinding:
    prefix: -rl
- id: in_rs
  doc: ': read length sigma [7.0]'
  type: long
  inputBinding:
    prefix: -rs
- id: in_ps
  doc: ': no error for first x bases in a read [0]'
  type: long
  inputBinding:
    prefix: -ps
- id: in_outputs_two_files
  doc: ': outputs two fastq files for bowtie mapping [off]'
  type: boolean
  inputBinding:
    prefix: -b
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- synthReadGen
