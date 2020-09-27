class: CommandLineTool
id: amptk_database.cwl
inputs:
- id: in_fast_a
  doc: Input FASTA file
  type: boolean
  inputBinding:
    prefix: --fasta
- id: in_out
  doc: Base name for output files, i.e. ITS2
  type: boolean
  inputBinding:
    prefix: --out
- id: in_fwd_primer
  doc: 'Forward primer. Default: fITS7'
  type: boolean
  inputBinding:
    prefix: --fwd_primer
- id: in_rev_primer
  doc: 'Reverse primer. Default: ITS4'
  type: boolean
  inputBinding:
    prefix: --rev_primer
- id: in_format
  doc: 'Reformat FASTA headers to UTAX format. Default: unite2utax [unite2utax, rdp2utax,
    off]'
  type: boolean
  inputBinding:
    prefix: --format
- id: in_drop_ns
  doc: "Removal sequences that have > x N's. Default: 8"
  type: boolean
  inputBinding:
    prefix: --drop_ns
- id: in_create_db
  doc: 'Create a DB. Default: usearch [utax, usearch, sintax]'
  type: boolean
  inputBinding:
    prefix: --create_db
- id: in_skip_trimming
  doc: 'Keep full length sequences. Default: off'
  type: boolean
  inputBinding:
    prefix: --skip_trimming
- id: in_de_rep_full_length
  doc: Remove identical sequences.
  type: boolean
  inputBinding:
    prefix: --derep_fulllength
- id: in_lca
  doc: Run LCA (last common ancestor) on taxonomy if dereplicating sequences.
  type: boolean
  inputBinding:
    prefix: --lca
- id: in_min_len
  doc: 'Minimum length to keep. Default: 100'
  type: boolean
  inputBinding:
    prefix: --min_len
- id: in_max_len
  doc: 'Maximum length to keep. Default: 1200'
  type: boolean
  inputBinding:
    prefix: --max_len
- id: in_trunc_len
  doc: Truncate records to length.
  type: boolean
  inputBinding:
    prefix: --trunclen
- id: in_subsample
  doc: Random subsample reads.
  type: boolean
  inputBinding:
    prefix: --subsample
- id: in_primer_mismatch
  doc: 'Max Primer Mismatch. Default: 2'
  type: boolean
  inputBinding:
    prefix: --primer_mismatch
- id: in_primer_required
  doc: 'Keep Sequence if primer found. Default: for [for,rev,none]'
  type: boolean
  inputBinding:
    prefix: --primer_required
- id: in_u_tax_train_levels
  doc: 'UTAX custom parameters. Default: kpcofgs'
  type: boolean
  inputBinding:
    prefix: --utax_trainlevels
- id: in_u_tax_split_levels
  doc: 'UTAX custom parameters. Default: NVkpcofgs'
  type: boolean
  inputBinding:
    prefix: --utax_splitlevels
- id: in_cpus
  doc: 'Number of CPUs to use. Default: all'
  type: boolean
  inputBinding:
    prefix: --cpus
- id: in_install
  doc: Install into AMPtk Database
  type: boolean
  inputBinding:
    prefix: --install
- id: in_u_search
  doc: 'USEARCH executable. Default: usearch9'
  type: boolean
  inputBinding:
    prefix: --usearch
- id: in_arguments
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- amptk
- database
