class: CommandLineTool
id: vtools_export.cwl
inputs:
- id: in_name_output_file
  doc: "[OUTPUT], --output [OUTPUT]\nName of output file. Output will be written to\
    \ the\nstandard output if this parameter is left unspecified."
  type: File
  inputBinding:
    prefix: -o
- id: in_samples_will_exported
  doc: "[COND [COND ...]], --samples [COND [COND ...]]\nSamples that will be exported,\
    \ specified by conditions\nsuch as 'aff=1' and 'filename like \"MG%\"'. Multiple\n\
    samples could be exported to a file if the output\nformat allows. No sample will\
    \ be outputted if this\nparameter is ignored."
  type: File
  inputBinding:
    prefix: -s
- id: in_format
  doc: "Format of the exported file. It can be one of the\nvariant tools supported\
    \ file types such as VCF (cf.\n'vtools show formats') or a local format specification\n\
    file (with extension .fmt). Some formats accept\nadditional parameters (cf. 'vtools\
    \ show format FMT')\nand allows you to export additional or alternative\nfields."
  type: File
  inputBinding:
    prefix: --format
- id: in_build
  doc: "Build version of the reference genome (e.g. hg18) of\nthe exported data. It\
    \ can only be one of the primary\n(default) of alternative (if exists) reference\
    \ genome\nof the project."
  type: long
  inputBinding:
    prefix: --build
- id: in_header
  doc: "[HEADER [HEADER ...]]\nA complete header or a list of names that will be\n\
    joined by a delimiter specified by the file format to\nform a header. If a special\
    \ name - is specified, the\nheader will be read from the standard input, which\
    \ is\nthe preferred way to specify large multi-line headers\n(e.g. cat myheader\
    \ | vtools export --header -).\nStrings in the form of %(VAR)s will be interpolated\
    \ to\nvalues of variable VAR, which can be \"sample_names\"\nfor list of sample\
    \ names, \"datetime\" for current date\nand time, and \"command\" for the command\
    \ used to create\noutput."
  type: boolean
  inputBinding:
    prefix: --header
- id: in_jobs
  doc: "Number of processes to export data. Multiple threads\nwill be automatically\
    \ used if there are a large number\nof samples."
  type: long
  inputBinding:
    prefix: --jobs
- id: in_verbosity
  doc: "Output error and warning (0), info (1), debug (2) and\ntrace (3) information\
    \ to standard output (default to\n1).\n"
  type: string
  inputBinding:
    prefix: --verbosity
- id: in_output
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_cond
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_name_output_file
  doc: "[OUTPUT], --output [OUTPUT]\nName of output file. Output will be written to\
    \ the\nstandard output if this parameter is left unspecified."
  type: File
  outputBinding:
    glob: $(inputs.in_name_output_file)
- id: out_samples_will_exported
  doc: "[COND [COND ...]], --samples [COND [COND ...]]\nSamples that will be exported,\
    \ specified by conditions\nsuch as 'aff=1' and 'filename like \"MG%\"'. Multiple\n\
    samples could be exported to a file if the output\nformat allows. No sample will\
    \ be outputted if this\nparameter is ignored."
  type: File
  outputBinding:
    glob: $(inputs.in_samples_will_exported)
cwlVersion: v1.1
baseCommand:
- vtools
- export
