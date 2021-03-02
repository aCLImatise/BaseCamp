class: CommandLineTool
id: PERsim.cwl
inputs:
- id: in_roi
  doc: Target region BED file.
  type: File?
  inputBinding:
    prefix: -roi
- id: in_count
  doc: Number of read pairs to generate.
  type: long?
  inputBinding:
    prefix: -count
- id: in_out_one
  doc: Forward reads output file in .FASTQ.GZ format.
  type: File?
  inputBinding:
    prefix: -out1
- id: in_out_two
  doc: Reverse reads output file in .FASTQ.GZ format.
  type: File?
  inputBinding:
    prefix: -out2
- id: in_length
  doc: "Read length for forward/reverse reads.\nDefault value: '100'"
  type: long?
  inputBinding:
    prefix: -length
- id: in_ins_mean
  doc: "Library insert size mean value.\nDefault value: '200'"
  type: long?
  inputBinding:
    prefix: -ins_mean
- id: in_ins_stdev
  doc: "Library insert size mean standard deviation.\nDefault value: '70'"
  type: long?
  inputBinding:
    prefix: -ins_stdev
- id: in_error
  doc: "Base error probability (uniform distribution).\nDefault value: '0.01'"
  type: double?
  inputBinding:
    prefix: -error
- id: in_max_n
  doc: "Maximum number of N bases (from reference genome).\nDefault value: '5'"
  type: long?
  inputBinding:
    prefix: -max_n
- id: in_a_one
  doc: "Forward read sequencing adapter sequence (for read-through).\nDefault value:\
    \ 'AGATCGGAAGAGCACACGTCTGAACTCCAGTCACGAGTTA'"
  type: long?
  inputBinding:
    prefix: -a1
- id: in_a_two
  doc: "Reverse read sequencing adapter sequence (for read-through).\nDefault value:\
    \ 'AGATCGGAAGAGCGTCGTGTAGGGAAAGAGTGTAGATCTC'"
  type: long?
  inputBinding:
    prefix: -a2
- id: in_ref
  doc: "Reference genome FASTA file. If unset 'reference_genome' from the 'settings.ini'\
    \ file is used.\nDefault value: ''"
  type: File?
  inputBinding:
    prefix: -ref
- id: in_enable_verbose_debug
  doc: "Enable verbose debug output.\nDefault value: 'false'"
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_changelog
  doc: Prints changeloge and exits.
  type: boolean?
  inputBinding:
    prefix: --changelog
- id: in_tdx
  doc: Writes a Tool Definition Xml file. The file name is the application name with
    the suffix '.tdx'.
  type: boolean?
  inputBinding:
    prefix: --tdx
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_one
  doc: Forward reads output file in .FASTQ.GZ format.
  type: File?
  outputBinding:
    glob: $(inputs.in_out_one)
- id: out_out_two
  doc: Reverse reads output file in .FASTQ.GZ format.
  type: File?
  outputBinding:
    glob: $(inputs.in_out_two)
hints: []
cwlVersion: v1.1
baseCommand:
- PERsim
