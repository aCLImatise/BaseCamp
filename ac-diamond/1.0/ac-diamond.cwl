#!/usr/bin/env cwl-runner

baseCommand:
- ac-diamond
class: CommandLineTool
cwlVersion: v1.0
id: ac-diamond
inputs:
- doc: View AC-DIAMOND alignment archive (DAA) formatted file
  id: view
  inputBinding:
    position: 0
  type: string
- doc: '[ --threads ] arg (=0) number of cpu threads'
  id: p
  inputBinding:
    prefix: -p
  type: boolean
- doc: '[ --db ] arg           database file'
  id: d
  inputBinding:
    prefix: -d
  type: boolean
- doc: '[ --daa ] arg          AC-DIAMOND alignment archive (DAA) file'
  id: a
  inputBinding:
    prefix: -a
  type: boolean
- doc: '[ --verbose ]          enable verbose out'
  id: v
  inputBinding:
    prefix: -v
  type: boolean
- doc: enable debug log
  id: log
  inputBinding:
    prefix: --log
  type: boolean
- doc: input reference file in FASTA format
  id: in
  inputBinding:
    prefix: --in
  type: string
- doc: '[ --block-size ] arg reference sequence block size in billions of letters  (default=4)'
  id: b
  inputBinding:
    prefix: -b
  type: boolean
- doc: enable building index for sensitive mode  (default:fast)
  id: sensitive
  inputBinding:
    prefix: --sensitive
  type: boolean
- doc: '[ --query-block-size ] arg (=6) query sequence block size in billions of  letters
    (default=6)'
  id: z
  inputBinding:
    prefix: -z
  type: boolean
- doc: '[ --query ] arg                 input query file'
  id: q
  inputBinding:
    prefix: -q
  type: boolean
- doc: '[ --max-target-seqs ] arg (=25) maximum number of target sequences to  report
    alignments for'
  id: k
  inputBinding:
    prefix: -k
  type: boolean
- doc: (=100)                   report alignments within this percentage  range of
    top alignment score (overrides  --max-target-seqs)
  id: top
  inputBinding:
    prefix: --top
  type: string
- doc: (=0)                compression for output files (0=none,  1=gzip)
  id: compress
  inputBinding:
    prefix: --compress
  type: string
- doc: '[ --evalue ] arg (=0.001)       maximum e-value to report alignments'
  id: e
  inputBinding:
    prefix: -e
  type: boolean
- doc: (=0)               minimum bit score to report alignments  (overrides e-value
    setting)
  id: min_score
  inputBinding:
    prefix: --min-score
  type: string
- doc: (=0)                      minimum identity% to report an alignment
  id: id
  inputBinding:
    prefix: --id
  type: string
- doc: 'enable sensitive mode (default: fast)'
  id: sensitive
  inputBinding:
    prefix: --sensitive
  type: boolean
- doc: '[ --tmpdir ] arg (=/dev/shm)    directory for temporary files'
  id: t
  inputBinding:
    prefix: -t
  type: boolean
- doc: (=-1)                gap open penalty, -1=default (11 for  protein)
  id: gap_open
  inputBinding:
    prefix: --gapopen
  type: string
- doc: (=-1)              gap extension penalty, -1=default (1 for  protein)
  id: gap_extend
  inputBinding:
    prefix: --gapextend
  type: string
- doc: (=blosum62)           score matrix for protein alignment
  id: matrix
  inputBinding:
    prefix: --matrix
  type: string
- doc: enable SEG masking of queries (yes/no)
  id: seg
  inputBinding:
    prefix: --seg
  type: string
- doc: '[ --window ] arg (=0)        window size for local hit search'
  id: w
  inputBinding:
    prefix: -w
  type: boolean
- doc: (=20)               xdrop for ungapped alignment
  id: x_drop
  inputBinding:
    prefix: --xdrop
  type: string
- doc: '[ --gapped-xdrop ] arg (=20) xdrop for gapped alignment in bits'
  id: x
  inputBinding:
    prefix: -X
  type: boolean
- doc: (=0)       minimum raw alignment score to continue local extension
  id: un_gapped_score
  inputBinding:
    prefix: --ungapped-score
  type: string
- doc: (=0)             band for hit verification
  id: hit_band
  inputBinding:
    prefix: --hit-band
  type: string
- doc: (=0)            minimum score to keep a tentative alignment
  id: hit_score
  inputBinding:
    prefix: --hit-score
  type: string
- doc: (=0)                 band for dynamic programming computation
  id: band
  inputBinding:
    prefix: --band
  type: string
- doc: (=0)           index mode (1=10x1, 2=10x8)
  id: index_mode
  inputBinding:
    prefix: --index-mode
  type: string
- doc: (=4096)        trace point fetch size
  id: fetch_size
  inputBinding:
    prefix: --fetch-size
  type: string
- doc: Discard secondary domains within one target  sequence
  id: single_domain
  inputBinding:
    prefix: --single-domain
  type: boolean
- doc: '[ --out ] arg           output file'
  id: o
  inputBinding:
    prefix: -o
  type: boolean
- doc: '[ --outfmt ] arg (=tab) output format (tab/sam)'
  id: f
  inputBinding:
    prefix: -f
  type: boolean
- doc: only show alignments of forward strand
  id: forward_only
  inputBinding:
    prefix: --forwardonly
  type: boolean
