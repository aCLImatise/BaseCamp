class: CommandLineTool
id: hp_assemble_scaffold.cwl
inputs:
- id: contigs_fa
  doc: Fasta file with assembled contigs
  type: string
  inputBinding:
    prefix: --contigs_fa
- id: ref_fa
  doc: Fasta file with reference genome to scaffold against
  type: string
  inputBinding:
    prefix: --ref_fa
- id: outdir
  doc: 'Output directory (default: .)'
  type: string
  inputBinding:
    prefix: --outdir
- id: seqname
  doc: 'Name to append to scaffold sequence. (default: sample01)'
  type: string
  inputBinding:
    prefix: --seqname
- id: keep_tmp
  doc: 'Additional options (default: False)'
  type: boolean
  inputBinding:
    prefix: --keep_tmp
- id: quiet
  doc: 'Do not write output to console (silence stdout and stderr) (default: False)'
  type: boolean
  inputBinding:
    prefix: --quiet
- id: log_file
  doc: Append console output to this file
  type: string
  inputBinding:
    prefix: --logfile
- id: debug
  doc: 'Print commands but do not run (default: False)'
  type: boolean
  inputBinding:
    prefix: --debug
outputs: []
cwlVersion: v1.1
baseCommand:
- hp_assemble_scaffold
