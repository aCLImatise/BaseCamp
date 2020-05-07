class: CommandLineTool
id: mlst.cwl
inputs:
- id: check
  doc: Just check dependencies and exit (default OFF)
  type: boolean
  inputBinding:
    prefix: --check
- id: quiet
  doc: Quiet - no stderr output (default OFF)
  type: boolean
  inputBinding:
    prefix: --quiet
- id: threads
  doc: "[N]     Number of BLAST threads (suggest GNU Parallel instead) (default '1')"
  type: boolean
  inputBinding:
    prefix: --threads
- id: debug
  doc: Verbose debug output to stderr (default OFF)
  type: boolean
  inputBinding:
    prefix: --debug
- id: scheme
  doc: "[X]      Don't autodetect, force this scheme on all inputs (default '')"
  type: boolean
  inputBinding:
    prefix: --scheme
- id: list
  doc: List available MLST scheme names (default OFF)
  type: boolean
  inputBinding:
    prefix: --list
- id: long_list
  doc: List allelles for all MLST schemes (default OFF)
  type: boolean
  inputBinding:
    prefix: --longlist
- id: exclude
  doc: "[X]     Ignore these schemes (comma sep. list) (default 'ecoli_2,abaumannii')"
  type: boolean
  inputBinding:
    prefix: --exclude
- id: csv
  doc: Output CSV instead of TSV (default OFF)
  type: boolean
  inputBinding:
    prefix: --csv
- id: json
  doc: "[X]        Also write results to this file in JSON format (default '')"
  type: boolean
  inputBinding:
    prefix: --json
- id: label
  doc: "[X]       Replace FILE with this name instead (default '')"
  type: boolean
  inputBinding:
    prefix: --label
- id: no_path
  doc: Strip filename paths from FILE column (default OFF)
  type: boolean
  inputBinding:
    prefix: --nopath
- id: novel
  doc: "[X]       Save novel alleles to this FASTA file (default '')"
  type: boolean
  inputBinding:
    prefix: --novel
- id: legacy
  doc: Use old legacy output with allele header row (requires --scheme) (default OFF)
  type: boolean
  inputBinding:
    prefix: --legacy
- id: mini_d
  doc: "[n.n]     DNA %identity of full allelle to consider 'similar' [~] (default\
    \ '95')"
  type: boolean
  inputBinding:
    prefix: --minid
- id: min_cov
  doc: "[n.n]    DNA %cov to report partial allele at all [?] (default '10')"
  type: boolean
  inputBinding:
    prefix: --mincov
- id: min_score
  doc: "[n.n]  Minumum score out of 100 to match a scheme (when auto --scheme) (default\
    \ '50')"
  type: boolean
  inputBinding:
    prefix: --minscore
- id: blast_db
  doc: "[X]     BLAST database (default '/tmp/tmpf3_1y9c7/db/blast/mlst.fa')"
  type: boolean
  inputBinding:
    prefix: --blastdb
- id: datadir
  doc: "[X]     PubMLST data (default '/tmp/tmpf3_1y9c7/db/pubmlst')"
  type: boolean
  inputBinding:
    prefix: --datadir
outputs: []
cwlVersion: v1.1
baseCommand:
- mlst
