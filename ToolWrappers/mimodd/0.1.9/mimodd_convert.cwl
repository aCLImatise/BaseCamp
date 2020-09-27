class: CommandLineTool
id: mimodd_convert.cwl
inputs:
- id: in_i_format
  doc: 'the format of the input file(s) (default: bam)'
  type: string
  inputBinding:
    prefix: --iformat
- id: in_ofile
  doc: "redirect the output to the specified file (default:\nstdout)"
  type: File
  inputBinding:
    prefix: --ofile
- id: in_o_format
  doc: 'the output format (default: sam)'
  type: string
  inputBinding:
    prefix: --oformat
- id: in_header
  doc: "optional SAM file, the header information of which\nshould be used in the\
    \ output (will overwrite pre-\nexisting header information from the input file);\
    \ not\nallowed for input in SAM/BAM format"
  type: File
  inputBinding:
    prefix: --header
- id: in_split_on_rgs
  doc: "if the input file has reads from different read\ngroups, write them to separate\
    \ output files (using\n--ofile OFILE as a file name template); implied for\nconversions\
    \ to fastq format"
  type: boolean
  inputBinding:
    prefix: --split-on-rgs
- id: in_threads
  doc: "the number of threads to use (overrides config\nsetting; ignored if not applicable\
    \ to the conversion)\n"
  type: long
  inputBinding:
    prefix: --threads
- id: in_convert
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_ofile
  doc: "redirect the output to the specified file (default:\nstdout)"
  type: File
  outputBinding:
    glob: $(inputs.in_ofile)
cwlVersion: v1.1
baseCommand:
- mimodd
- convert
