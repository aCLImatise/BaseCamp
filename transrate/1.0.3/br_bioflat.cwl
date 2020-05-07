class: CommandLineTool
id: br_bioflat.rb.cwl
inputs:
- id: primary
  doc: set primary namespece to UNIQUE Default primary/secondary namespaces depend
    on each format of flatfiles.
  type: string
  inputBinding:
    prefix: --primary
- id: secondary
  doc: set secondary namespaces. You may use this option many times to specify more
    than one namespace.
  type: string
  inputBinding:
    prefix: --secondary
- id: add_secondary
  doc: add secondary namespaces to default specification. You can use this option
    many times.
  type: string
  inputBinding:
    prefix: --add-secondary
- id: sort
  doc: =/path/to/sort   use external sort program (e.g. /usr/bin/sort)
  type: boolean
  inputBinding:
    prefix: --sort
- id: sort
  doc: 'use builtin sort routine (default: /usr/bin/sort or BUILTIN)'
  type: string
  inputBinding:
    prefix: --sort
- id: env
  doc: '=/path/to/env     use env program to run sort (default: /usr/bin/env)'
  type: boolean
  inputBinding:
    prefix: --env
- id: env_arg
  doc: 'argument given to the env program (default: LC_ALL=C) (multiple --env-arg=XXXXXX
    can be specified)'
  type: string
  inputBinding:
    prefix: --env-arg
- id: renew
  doc: re-read all flatfiles and update whole index
  type: boolean
  inputBinding:
    prefix: --renew
- id: format
  doc: instead of genbank|embl|fasta, specifing a class name is allowed
  type: string
  inputBinding:
    prefix: --format
outputs: []
cwlVersion: v1.1
baseCommand:
- br_bioflat.rb
