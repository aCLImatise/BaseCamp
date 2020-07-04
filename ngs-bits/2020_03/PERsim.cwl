class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/PERsim.cwl
inputs:
- id: roi
  doc: Target region BED file.
  type: File
  inputBinding:
    prefix: -roi
- id: count
  doc: Number of read pairs to generate.
  type: long
  inputBinding:
    prefix: -count
- id: out_one
  doc: Forward reads output file in .FASTQ.GZ format.
  type: File
  inputBinding:
    prefix: -out1
- id: out_two
  doc: Reverse reads output file in .FASTQ.GZ format.
  type: File
  inputBinding:
    prefix: -out2
- id: length
  doc: "Read length for forward/reverse reads. Default value: '100'"
  type: long
  inputBinding:
    prefix: -length
- id: ins_mean
  doc: "Library insert size mean value. Default value: '200'"
  type: long
  inputBinding:
    prefix: -ins_mean
- id: ins_stdev
  doc: "Library insert size mean standard deviation. Default value: '70'"
  type: long
  inputBinding:
    prefix: -ins_stdev
- id: error
  doc: "Base error probability (uniform distribution). Default value: '0.01'"
  type: double
  inputBinding:
    prefix: -error
- id: max_n
  doc: "Maximum number of N bases (from reference genome). Default value: '5'"
  type: long
  inputBinding:
    prefix: -max_n
- id: a_one
  doc: "Forward read sequencing adapter sequence (for read-through). Default value:\
    \ 'AGATCGGAAGAGCACACGTCTGAACTCCAGTCACGAGTTA'"
  type: string
  inputBinding:
    prefix: -a1
- id: a_two
  doc: "Reverse read sequencing adapter sequence (for read-through). Default value:\
    \ 'AGATCGGAAGAGCGTCGTGTAGGGAAAGAGTGTAGATCTC'"
  type: string
  inputBinding:
    prefix: -a2
- id: ref
  doc: "Reference genome FASTA file. If unset 'reference_genome' from the 'settings.ini'\
    \ file is used. Default value: ''"
  type: File
  inputBinding:
    prefix: -ref
- id: enable_verbose_value
  doc: "Enable verbose debug output. Default value: 'false'"
  type: boolean
  inputBinding:
    prefix: -v
- id: changelog
  doc: Prints changeloge and exits.
  type: boolean
  inputBinding:
    prefix: --changelog
- id: tdx
  doc: Writes a Tool Definition Xml file. The file name is the application name with
    the suffix '.tdx'.
  type: boolean
  inputBinding:
    prefix: --tdx
outputs: []
cwlVersion: v1.1
baseCommand:
- PERsim
