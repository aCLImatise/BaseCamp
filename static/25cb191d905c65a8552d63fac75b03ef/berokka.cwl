class: CommandLineTool
id: berokka.cwl
inputs:
- id: in_debug
  doc: Debug info.
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_check
  doc: Check dependencies and exit.
  type: boolean?
  inputBinding:
    prefix: --check
- id: in_test
  doc: Run a small test and exit.
  type: boolean?
  inputBinding:
    prefix: --test
- id: in_force
  doc: Force overwite of existing.
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_outdir
  doc: '[X]    Output folder [].'
  type: Directory?
  inputBinding:
    prefix: --outdir
- id: in_read_len
  doc: '[N]   Approximate max read length [60000].'
  type: boolean?
  inputBinding:
    prefix: --readlen
- id: in_fuzz
  doc: '[N]      Accept local alignment within --fuzz bp of global [5].'
  type: boolean?
  inputBinding:
    prefix: --fuzz
- id: in_keep_files
  doc: Keep intermediate files.
  type: boolean?
  inputBinding:
    prefix: --keepfiles
- id: in_no_an_no
  doc: Don't annotate FASTA with circular=true.
  type: boolean?
  inputBinding:
    prefix: --noanno
- id: in_filter
  doc: '[X]    Contaminants to remove [/usr/local/db/controls.fna].'
  type: boolean?
  inputBinding:
    prefix: --filter
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: '[X]    Output folder [].'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
hints: []
cwlVersion: v1.1
baseCommand:
- berokka
