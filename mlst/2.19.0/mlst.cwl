#!/usr/bin/env cwl-runner

baseCommand:
- mlst
class: CommandLineTool
cwlVersion: v1.0
id: mlst
inputs:
- doc: Just check dependencies and exit (default OFF)
  id: check
  inputBinding:
    prefix: --check
  type: boolean
- doc: Quiet - no stderr output (default OFF)
  id: quiet
  inputBinding:
    prefix: --quiet
  type: boolean
- doc: "[N]     Number of BLAST threads (suggest GNU Parallel instead) (default '1')"
  id: threads
  inputBinding:
    prefix: --threads
  type: boolean
- doc: Verbose debug output to stderr (default OFF)
  id: debug
  inputBinding:
    prefix: --debug
  type: boolean
- doc: "[X]      Don't autodetect, force this scheme on all inputs (default '')"
  id: scheme
  inputBinding:
    prefix: --scheme
  type: boolean
- doc: List available MLST scheme names (default OFF)
  id: list
  inputBinding:
    prefix: --list
  type: boolean
- doc: List allelles for all MLST schemes (default OFF)
  id: long_list
  inputBinding:
    prefix: --longlist
  type: boolean
- doc: "[X]     Ignore these schemes (comma sep. list) (default 'ecoli_2,abaumannii')"
  id: exclude
  inputBinding:
    prefix: --exclude
  type: boolean
- doc: Output CSV instead of TSV (default OFF)
  id: csv
  inputBinding:
    prefix: --csv
  type: boolean
- doc: "[X]        Also write results to this file in JSON format (default '')"
  id: json
  inputBinding:
    prefix: --json
  type: boolean
- doc: "[X]       Replace FILE with this name instead (default '')"
  id: label
  inputBinding:
    prefix: --label
  type: boolean
- doc: Strip filename paths from FILE column (default OFF)
  id: no_path
  inputBinding:
    prefix: --nopath
  type: boolean
- doc: "[X]       Save novel alleles to this FASTA file (default '')"
  id: novel
  inputBinding:
    prefix: --novel
  type: boolean
- doc: Use old legacy output with allele header row (requires --scheme) (default OFF)
  id: legacy
  inputBinding:
    prefix: --legacy
  type: boolean
- doc: "[n.n]     DNA %identity of full allelle to consider 'similar' [~] (default\
    \ '95')"
  id: mini_d
  inputBinding:
    prefix: --minid
  type: boolean
- doc: "[n.n]    DNA %cov to report partial allele at all [?] (default '10')"
  id: min_cov
  inputBinding:
    prefix: --mincov
  type: boolean
- doc: "[n.n]  Minumum score out of 100 to match a scheme (when auto --scheme) (default\
    \ '50')"
  id: min_score
  inputBinding:
    prefix: --minscore
  type: boolean
- doc: "[X]     BLAST database (default '/tmp/tmpf3_1y9c7/db/blast/mlst.fa')"
  id: blast_db
  inputBinding:
    prefix: --blastdb
  type: boolean
- doc: "[X]     PubMLST data (default '/tmp/tmpf3_1y9c7/db/pubmlst')"
  id: datadir
  inputBinding:
    prefix: --datadir
  type: boolean
