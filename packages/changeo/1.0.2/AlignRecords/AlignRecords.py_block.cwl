class: CommandLineTool
id: AlignRecords.py_block.cwl
inputs:
- id: in_list_tab_defaultnone
  doc: "A list of tab delimited database files. (default:\nNone)"
  type: string[]
  inputBinding:
    prefix: -d
- id: in_explicit_output_file
  doc: "Explicit output file name. Note, this argument cannot\nbe used with the --failed,\
    \ --outdir, or --outname\narguments. If unspecified, then the output filename\n\
    will be based on the input filename(s). (default:\nNone)"
  type: string[]
  inputBinding:
    prefix: -o
- id: in_outdir
  doc: "Specify to changes the output directory to the\nlocation specified. The input\
    \ file directory is used\nif this is not specified. (default: None)"
  type: File?
  inputBinding:
    prefix: --outdir
- id: in_out_name
  doc: "Changes the prefix of the successfully processed\noutput file to the string\
    \ specified. May not be\nspecified with multiple input files. (default: None)"
  type: File?
  inputBinding:
    prefix: --outname
- id: in_log
  doc: "Specify to write verbose logging to a file. May not be\nspecified with multiple\
    \ input files. (default: None)"
  type: File?
  inputBinding:
    prefix: --log
- id: in_failed
  doc: "If specified create files containing records that fail\nprocessing. (default:\
    \ False)"
  type: boolean?
  inputBinding:
    prefix: --failed
- id: in_format
  doc: 'Specify input and output format. (default: airr)'
  type: string?
  inputBinding:
    prefix: --format
- id: in_nproc
  doc: "The number of simultaneous computational processes to\nexecute (CPU cores\
    \ to utilized). (default: 8)"
  type: long?
  inputBinding:
    prefix: --nproc
- id: in_sf
  doc: "The sequence fields to multiple align within each\ngroup. (default: None)"
  type: string[]
  inputBinding:
    prefix: --sf
- id: in_gf
  doc: "Additional (not allele call) fields to use for\ngrouping. (default: None)"
  type: string[]
  inputBinding:
    prefix: --gf
- id: in_calls
  doc: "[{v,d,j} ...]\nSegment calls (allele assignments) to use for\ngrouping. (default:\
    \ ['v', 'j'])"
  type: string?
  inputBinding:
    prefix: --calls
- id: in_mode
  doc: "Specifies whether to use the V(D)J allele or gene when\nan allele call field\
    \ (--calls) is specified. (default:\ngene)"
  type: string?
  inputBinding:
    prefix: --mode
- id: in_act
  doc: "Specifies how to handle multiple values within default\nallele call fields.\
    \ Currently, only \"first\" is\nsupported. (default: first)"
  type: string?
  inputBinding:
    prefix: --act
- id: in_exec
  doc: "The location of the MUSCLE executable (default:\nmuscle)\n"
  type: string?
  inputBinding:
    prefix: --exec
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/changeo:1.0.2--py_0
cwlVersion: v1.1
baseCommand:
- AlignRecords.py
- block
