class: CommandLineTool
id: ac_diamond.cwl
inputs:
- id: view
  doc: View AC-DIAMOND alignment archive (DAA) formatted file
  type: string
  inputBinding:
    position: 0
- id: p
  doc: '[ --threads ] arg (=0) number of cpu threads'
  type: boolean
  inputBinding:
    prefix: -p
- id: d
  doc: '[ --db ] arg           database file'
  type: boolean
  inputBinding:
    prefix: -d
- id: a
  doc: '[ --daa ] arg          AC-DIAMOND alignment archive (DAA) file'
  type: boolean
  inputBinding:
    prefix: -a
- id: v
  doc: '[ --verbose ]          enable verbose out'
  type: boolean
  inputBinding:
    prefix: -v
- id: log
  doc: enable debug log
  type: boolean
  inputBinding:
    prefix: --log
- id: in
  doc: input reference file in FASTA format
  type: string
  inputBinding:
    prefix: --in
- id: b
  doc: '[ --block-size ] arg reference sequence block size in billions of letters  (default=4)'
  type: boolean
  inputBinding:
    prefix: -b
- id: sensitive
  doc: enable building index for sensitive mode  (default:fast)
  type: boolean
  inputBinding:
    prefix: --sensitive
- id: z
  doc: '[ --query-block-size ] arg (=6) query sequence block size in billions of  letters
    (default=6)'
  type: boolean
  inputBinding:
    prefix: -z
- id: q
  doc: '[ --query ] arg                 input query file'
  type: boolean
  inputBinding:
    prefix: -q
- id: k
  doc: '[ --max-target-seqs ] arg (=25) maximum number of target sequences to  report
    alignments for'
  type: boolean
  inputBinding:
    prefix: -k
- id: top
  doc: (=100)                   report alignments within this percentage  range of
    top alignment score (overrides  --max-target-seqs)
  type: string
  inputBinding:
    prefix: --top
- id: compress
  doc: (=0)                compression for output files (0=none,  1=gzip)
  type: string
  inputBinding:
    prefix: --compress
- id: e
  doc: '[ --evalue ] arg (=0.001)       maximum e-value to report alignments'
  type: boolean
  inputBinding:
    prefix: -e
- id: min_score
  doc: (=0)               minimum bit score to report alignments  (overrides e-value
    setting)
  type: string
  inputBinding:
    prefix: --min-score
- id: id
  doc: (=0)                      minimum identity% to report an alignment
  type: string
  inputBinding:
    prefix: --id
- id: sensitive
  doc: 'enable sensitive mode (default: fast)'
  type: boolean
  inputBinding:
    prefix: --sensitive
- id: t
  doc: '[ --tmpdir ] arg (=/dev/shm)    directory for temporary files'
  type: boolean
  inputBinding:
    prefix: -t
- id: gap_open
  doc: (=-1)                gap open penalty, -1=default (11 for  protein)
  type: string
  inputBinding:
    prefix: --gapopen
- id: gap_extend
  doc: (=-1)              gap extension penalty, -1=default (1 for  protein)
  type: string
  inputBinding:
    prefix: --gapextend
- id: matrix
  doc: (=blosum62)           score matrix for protein alignment
  type: string
  inputBinding:
    prefix: --matrix
- id: seg
  doc: enable SEG masking of queries (yes/no)
  type: string
  inputBinding:
    prefix: --seg
- id: w
  doc: '[ --window ] arg (=0)        window size for local hit search'
  type: boolean
  inputBinding:
    prefix: -w
- id: x_drop
  doc: (=20)               xdrop for ungapped alignment
  type: string
  inputBinding:
    prefix: --xdrop
- id: x
  doc: '[ --gapped-xdrop ] arg (=20) xdrop for gapped alignment in bits'
  type: boolean
  inputBinding:
    prefix: -X
- id: un_gapped_score
  doc: (=0)       minimum raw alignment score to continue local extension
  type: string
  inputBinding:
    prefix: --ungapped-score
- id: hit_band
  doc: (=0)             band for hit verification
  type: string
  inputBinding:
    prefix: --hit-band
- id: hit_score
  doc: (=0)            minimum score to keep a tentative alignment
  type: string
  inputBinding:
    prefix: --hit-score
- id: band
  doc: (=0)                 band for dynamic programming computation
  type: string
  inputBinding:
    prefix: --band
- id: index_mode
  doc: (=0)           index mode (1=10x1, 2=10x8)
  type: string
  inputBinding:
    prefix: --index-mode
- id: fetch_size
  doc: (=4096)        trace point fetch size
  type: string
  inputBinding:
    prefix: --fetch-size
- id: single_domain
  doc: Discard secondary domains within one target  sequence
  type: boolean
  inputBinding:
    prefix: --single-domain
- id: o
  doc: '[ --out ] arg           output file'
  type: boolean
  inputBinding:
    prefix: -o
- id: f
  doc: '[ --outfmt ] arg (=tab) output format (tab/sam)'
  type: boolean
  inputBinding:
    prefix: -f
- id: forward_only
  doc: only show alignments of forward strand
  type: boolean
  inputBinding:
    prefix: --forwardonly
outputs: []
cwlVersion: v1.1
baseCommand:
- ac-diamond
