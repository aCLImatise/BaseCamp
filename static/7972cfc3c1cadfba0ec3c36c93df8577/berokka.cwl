class: CommandLineTool
id: berokka.cwl
inputs:
- id: debug
  doc: Debug info.
  type: boolean
  inputBinding:
    prefix: --debug
- id: check
  doc: Check dependencies and exit.
  type: boolean
  inputBinding:
    prefix: --check
- id: test
  doc: Run a small test and exit.
  type: boolean
  inputBinding:
    prefix: --test
- id: force
  doc: Force overwite of existing.
  type: boolean
  inputBinding:
    prefix: --force
- id: outdir
  doc: '[X]    Output folder [].'
  type: boolean
  inputBinding:
    prefix: --outdir
- id: read_len
  doc: '[N]   Approximate max read length [60000].'
  type: boolean
  inputBinding:
    prefix: --readlen
- id: fuzz
  doc: '[N]      Accept local alignment within --fuzz bp of global [5].'
  type: boolean
  inputBinding:
    prefix: --fuzz
- id: keep_files
  doc: Keep intermediate files.
  type: boolean
  inputBinding:
    prefix: --keepfiles
- id: no_an_no
  doc: Don't annotate FASTA with circular=true.
  type: boolean
  inputBinding:
    prefix: --noanno
- id: filter
  doc: '[X]    Contaminants to remove [/tmp/tmpxq3y3_fe/db/controls.fna].'
  type: boolean
  inputBinding:
    prefix: --filter
outputs: []
cwlVersion: v1.1
baseCommand:
- berokka
