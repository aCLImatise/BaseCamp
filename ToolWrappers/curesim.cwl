class: CommandLineTool
id: curesim.cwl
inputs:
- id: in_genome_fasta_file
  doc: '[mandatory] genome fasta file or reads fastq file'
  type: File
  inputBinding:
    prefix: -f
- id: in_o
  doc: '[facultative] name of output fastq file [output.fastq]'
  type: File
  inputBinding:
    prefix: -o
- id: in_var_2
  doc: '[facultative] number of reads to generate [50000]'
  type: long
  inputBinding:
    prefix: -n
- id: in_m
  doc: '[facultative] read mean size [200]'
  type: long
  inputBinding:
    prefix: -m
- id: in_sd
  doc: '[facultative] standard deviation for read size [20.0]'
  type: long
  inputBinding:
    prefix: -sd
- id: in_r
  doc: '[facultative] number of random reads [0]'
  type: long
  inputBinding:
    prefix: -r
- id: in_d
  doc: '[facultative] deletion rate [0.01]'
  type: double
  inputBinding:
    prefix: -d
- id: in_i
  doc: '[facultative] insertion rate [0.005]'
  type: double
  inputBinding:
    prefix: -i
- id: in_s
  doc: '[facultative] substitution rate [0.005]'
  type: double
  inputBinding:
    prefix: -s
- id: in_ui
  doc: '[facultative] uniform distribution for indels [homopolymers]'
  type: boolean
  inputBinding:
    prefix: -ui
- id: in_us
  doc: '[facultative] uniform distribution for substitutions [exponential]'
  type: boolean
  inputBinding:
    prefix: -us
- id: in_q
  doc: "[facultative] quality encoding character ['5']"
  type: long
  inputBinding:
    prefix: -q
- id: in_var_12
  doc: '[facultative] maximum number of Ns allowed per read [0]'
  type: long
  inputBinding:
    prefix: -N
- id: in_v
  doc: '[facultative] verbose mode, you need R software in this mode [false]'
  type: boolean
  inputBinding:
    prefix: -v
- id: in_skip
  doc: '[facultative] skip the correction step [false]'
  type: boolean
  inputBinding:
    prefix: -skip
- id: in_jar
  doc: ''
  type: string
  inputBinding:
    prefix: -jar
- id: in_java
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_o
  doc: '[facultative] name of output fastq file [output.fastq]'
  type: File
  outputBinding:
    glob: $(inputs.in_o)
cwlVersion: v1.1
baseCommand:
- curesim
