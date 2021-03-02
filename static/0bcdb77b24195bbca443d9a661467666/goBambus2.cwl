class: CommandLineTool
id: goBambus2.cwl
inputs:
- id: in_all
  doc: ': run ALL steps (irrespective of flags)'
  type: boolean?
  inputBinding:
    prefix: --all
- id: in_contigs
  doc: ': indicates to start with pre-assembled contigs'
  type: boolean?
  inputBinding:
    prefix: --contigs
- id: in_reads
  doc: ': indicates to start with reads, assemble with Minimums'
  type: boolean?
  inputBinding:
    prefix: --reads
- id: in_verbose
  doc: ': increase to full verbosity'
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_two_amos
  doc: ': use toAmos, create AMOS format AFG'
  type: boolean?
  inputBinding:
    prefix: --2amos
- id: in_two_fast_a
  doc: ': create FASTA contig output'
  type: boolean?
  inputBinding:
    prefix: --2fasta
- id: in_bundle
  doc: ': run Bambus2 bundler'
  type: boolean?
  inputBinding:
    prefix: --bundle
- id: in_clk
  doc: ': run Bambus2 create links binary'
  type: boolean?
  inputBinding:
    prefix: --clk
- id: in_minimus
  doc: ': run Minimus to assemble reads'
  type: boolean?
  inputBinding:
    prefix: --minimus
- id: in_orient
  doc: ': run main Bambus2 binary, to Order & Orient contigs'
  type: boolean?
  inputBinding:
    prefix: --orient
- id: in_prints_caff
  doc: ': create FASTA scaffold output'
  type: boolean?
  inputBinding:
    prefix: --printscaff
- id: in_reps
  doc: ': Run Bambus2 graph-based repeat detection binary'
  type: boolean?
  inputBinding:
    prefix: --reps
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- goBambus2
