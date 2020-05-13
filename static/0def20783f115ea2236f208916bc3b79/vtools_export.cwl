class: CommandLineTool
id: vtools_export.cwl
inputs:
- id: table
  doc: A variant table whose variants will be exported. If parameter --samples is
    specified, only variants belong to one or more of the samples will be exported.
  type: string
  inputBinding:
    position: 0
- id: o
  doc: '[OUTPUT], --output [OUTPUT] Name of output file. Output will be written to
    the standard output if this parameter is left unspecified.'
  type: boolean
  inputBinding:
    prefix: -o
- id: s
  doc: "[COND [COND ...]], --samples [COND [COND ...]] Samples that will be exported,\
    \ specified by conditions such as 'aff=1' and 'filename like \"MG%\"'. Multiple\
    \ samples could be exported to a file if the output format allows. No sample will\
    \ be outputted if this parameter is ignored."
  type: boolean
  inputBinding:
    prefix: -s
- id: format
  doc: Format of the exported file. It can be one of the variant tools supported file
    types such as VCF (cf. 'vtools show formats') or a local format specification
    file (with extension .fmt). Some formats accept additional parameters (cf. 'vtools
    show format FMT') and allows you to export additional or alternative fields.
  type: string
  inputBinding:
    prefix: --format
- id: build
  doc: Build version of the reference genome (e.g. hg18) of the exported data. It
    can only be one of the primary (default) of alternative (if exists) reference
    genome of the project.
  type: string
  inputBinding:
    prefix: --build
- id: header
  doc: '[HEADER [HEADER ...]] A complete header or a list of names that will be joined
    by a delimiter specified by the file format to form a header. If a special name
    - is specified, the header will be read from the standard input, which is the
    preferred way to specify large multi-line headers (e.g. cat myheader | vtools
    export --header -). Strings in the form of %(VAR)s will be interpolated to values
    of variable VAR, which can be "sample_names" for list of sample names, "datetime"
    for current date and time, and "command" for the command used to create output.'
  type: boolean
  inputBinding:
    prefix: --header
- id: jobs
  doc: Number of processes to export data. Multiple threads will be automatically
    used if there are a large number of samples.
  type: string
  inputBinding:
    prefix: --jobs
- id: v
  doc: '{0,1,2,3}, --verbosity {0,1,2,3} Output error and warning (0), info (1), debug
    (2) and trace (3) information to standard output (default to 1).'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- vtools
- export
