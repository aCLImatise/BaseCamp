class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/circminer.cwl
inputs:
- id: index
  doc: ':            Indicates the indexing stage.'
  type: boolean
  inputBinding:
    prefix: --index
- id: compact_index
  doc: ':    Use this option only while building the index to enable compact version
    of the index.'
  type: boolean
  inputBinding:
    prefix: --compact-index
- id: km_er
  doc: ':             Kmer size [14..22] (default = 20).'
  type: boolean
  inputBinding:
    prefix: --kmer
- id: reference
  doc: ':        Reference file.'
  type: boolean
  inputBinding:
    prefix: --reference
- id: gtf
  doc: ':              Gene model file.'
  type: boolean
  inputBinding:
    prefix: --gtf
- id: seq
  doc: ':              Single-end sequence file.'
  type: boolean
  inputBinding:
    prefix: --seq
- id: seq_one
  doc: ':             1st paired-end sequence file.'
  type: boolean
  inputBinding:
    prefix: --seq1
- id: seq_two
  doc: ':             2nd paired-end sequence file.'
  type: boolean
  inputBinding:
    prefix: --seq2
- id: rlen
  doc: ':             Max read length (default = 300).'
  type: boolean
  inputBinding:
    prefix: --rlen
- id: max_ed
  doc: ':           Max allowed edit distance on each mate (default = 4).'
  type: boolean
  inputBinding:
    prefix: --max-ed
- id: max_sc
  doc: ':           Max allowed soft clipping on each mate (default = 7).'
  type: boolean
  inputBinding:
    prefix: --max-sc
- id: band
  doc: ':             Band width for banded alignment (default = 3).'
  type: boolean
  inputBinding:
    prefix: --band
- id: seed_lim
  doc: ':         Skip seeds that have more than INT occurrences (default = 500).'
  type: boolean
  inputBinding:
    prefix: --seed-lim
- id: max_tlen
  doc: ':         Maximum template length of concordant mapping. Paired-end mode only
    (default = 500).'
  type: boolean
  inputBinding:
    prefix: --max-tlen
- id: max_intron
  doc: ':       Maximum length of an intron (default = 2000000).'
  type: boolean
  inputBinding:
    prefix: --max-intron
- id: max_chain_list
  doc: ':   Maximum number of chained candidates to be processed (default = 30).'
  type: boolean
  inputBinding:
    prefix: --max-chain-list
- id: output
  doc: ':           Prefix of output files (default = output).'
  type: boolean
  inputBinding:
    prefix: --output
- id: thread
  doc: ':           Number of threads (default = 1).'
  type: boolean
  inputBinding:
    prefix: --thread
- id: sam
  doc: ':              Enables SAM output for aligned reads. Cannot be set along with
    --pam.'
  type: boolean
  inputBinding:
    prefix: --sam
- id: pam
  doc: ':              Enables custom pam output for aligned reads. Cannot be set
    along with --sam.'
  type: boolean
  inputBinding:
    prefix: --pam
- id: verbosity
  doc: ':        Verbosity mode: 0 or 1. Higher values output more information (default
    = 0).'
  type: boolean
  inputBinding:
    prefix: --verbosity
- id: scan_lev
  doc: ':         Transcriptome/Genome scan level: 0 to 2. (default = 0) 0: Report
    the first mapping. 1: Continue processing the read unless it is perfectly mapped
    to cDNA. 2: Report the best mapping.'
  type: boolean
  inputBinding:
    prefix: --scan-lev
outputs: []
cwlVersion: v1.1
baseCommand:
- circminer
