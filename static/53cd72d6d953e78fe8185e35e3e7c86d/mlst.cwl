class: CommandLineTool
id: mlst.cwl
inputs:
- id: in_check
  doc: Just check dependencies and exit (default OFF)
  type: boolean
  inputBinding:
    prefix: --check
- id: in_quiet
  doc: Quiet - no stderr output (default OFF)
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_threads
  doc: "[N]     Number of BLAST threads (suggest GNU Parallel instead) (default '1')"
  type: boolean
  inputBinding:
    prefix: --threads
- id: in_debug
  doc: Verbose debug output to stderr (default OFF)
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_scheme
  doc: "[X]      Don't autodetect, force this scheme on all inputs (default '')"
  type: boolean
  inputBinding:
    prefix: --scheme
- id: in_list
  doc: List available MLST scheme names (default OFF)
  type: boolean
  inputBinding:
    prefix: --list
- id: in_long_list
  doc: List allelles for all MLST schemes (default OFF)
  type: boolean
  inputBinding:
    prefix: --longlist
- id: in_exclude
  doc: "[X]     Ignore these schemes (comma sep. list) (default 'ecoli_2,abaumannii')"
  type: boolean
  inputBinding:
    prefix: --exclude
- id: in_csv
  doc: Output CSV instead of TSV (default OFF)
  type: boolean
  inputBinding:
    prefix: --csv
- id: in_json
  doc: "[X]        Also write results to this file in JSON format (default '')"
  type: boolean
  inputBinding:
    prefix: --json
- id: in_label
  doc: "[X]       Replace FILE with this name instead (default '')"
  type: boolean
  inputBinding:
    prefix: --label
- id: in_no_path
  doc: Strip filename paths from FILE column (default OFF)
  type: boolean
  inputBinding:
    prefix: --nopath
- id: in_novel
  doc: "[X]       Save novel alleles to this FASTA file (default '')"
  type: boolean
  inputBinding:
    prefix: --novel
- id: in_legacy
  doc: Use old legacy output with allele header row (requires --scheme) (default OFF)
  type: boolean
  inputBinding:
    prefix: --legacy
- id: in_mini_d
  doc: "[n.n]     DNA %identity of full allelle to consider 'similar' [~] (default\
    \ '95')"
  type: boolean
  inputBinding:
    prefix: --minid
- id: in_min_cov
  doc: "[n.n]    DNA %cov to report partial allele at all [?] (default '10')"
  type: boolean
  inputBinding:
    prefix: --mincov
- id: in_min_score
  doc: "[n.n]  Minumum score out of 100 to match a scheme (when auto --scheme) (default\
    \ '50')"
  type: boolean
  inputBinding:
    prefix: --minscore
- id: in_blast_db
  doc: "[X]     BLAST database (default '/usr/local/db/blast/mlst.fa')"
  type: boolean
  inputBinding:
    prefix: --blastdb
- id: in_datadir
  doc: "[X]     PubMLST data (default '/usr/local/db/pubmlst')"
  type: boolean
  inputBinding:
    prefix: --datadir
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mlst
