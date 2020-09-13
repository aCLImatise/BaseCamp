class: CommandLineTool
id: ../../../dsk2ascii.cwl
inputs:
- id: in_arg_output_stdout
  doc: '(0 arg) :    output to stdout'
  type: boolean
  inputBinding:
    prefix: -c
- id: in_fast_a
  doc: '(0 arg) :    output in fasta format, one kmer per read'
  type: boolean
  inputBinding:
    prefix: -fasta
- id: in_fast_q
  doc: '(0 arg) :    output in fastq format, one kmer per read'
  type: boolean
  inputBinding:
    prefix: -fastq
- id: in_file
  doc: '(1 arg) :    file generated by dsk'
  type: boolean
  inputBinding:
    prefix: -file
- id: in_out
  doc: '(1 arg) :    output file'
  type: File
  inputBinding:
    prefix: -out
- id: in_nb_cores
  doc: "(1 arg) :    number of cores  [default '0']"
  type: boolean
  inputBinding:
    prefix: -nb-cores
- id: in_verbose
  doc: "(1 arg) :    verbosity level  [default '1']"
  type: boolean
  inputBinding:
    prefix: -verbose
- id: in_version
  doc: '(0 arg) :    version'
  type: boolean
  inputBinding:
    prefix: -version
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: '(1 arg) :    output file'
  type: File
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- dsk2ascii
