class: CommandLineTool
id: compileSpliceCands.cwl
inputs:
- id: in_filename_potential_sites
  doc: <filename>      The potential splice sites in gff format
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_filename_genome_file
  doc: <filename>      The genome file in fasta format)
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_integer_defines_number
  doc: <integer>       Defines the number of potential splice site every potential
    splice site itself is compared with
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_float_has_be
  doc: <float>         has to be between 0 and 1 and  defines how much the average
    coverage may differ
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_integer_defines_arround
  doc: <integer>       defines how many bases arround the splice site should be checked.
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_argument_enables_output
  doc: <no argument>   enables debugging output
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_integer_maximum_length
  doc: <integer>       The maximum length an Intron can be. Default 500000(human genome).
  type: boolean?
  inputBinding:
    prefix: -i
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- compileSpliceCands
