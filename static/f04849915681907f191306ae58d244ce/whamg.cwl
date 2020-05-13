class: CommandLineTool
id: whamg.cwl
inputs:
- id: e
  doc: ',GL000207.1 2> wham.err > wham.vcf'
  type: string
  inputBinding:
    prefix: -e
- id: f
  doc: '<STRING>  Comma separated list of bam files or a file with     one bam (full
    path) per line.                       '
  type: boolean
  inputBinding:
    prefix: -f
- id: a
  doc: '<STRING>  The reference genome (indexed fasta).               '
  type: boolean
  inputBinding:
    prefix: -a
- id: s
  doc: '<FLAG>    Exits the program after the stats are                gathered. [false]                                   '
  type: boolean
  inputBinding:
    prefix: -s
- id: g
  doc: '<STRING>  File to write graph to (very large output). [false] '
  type: boolean
  inputBinding:
    prefix: -g
- id: r
  doc: '<STRING>  Region in format: seqid:start-end [whole genome]    '
  type: boolean
  inputBinding:
    prefix: -r
- id: m
  doc: '<INT>     Mapping quality filter [20].                        '
  type: boolean
  inputBinding:
    prefix: -m
- id: i
  doc: '<STRING>  non standard split read tag [SA]                    '
  type: boolean
  inputBinding:
    prefix: -i
- id: z
  doc: '<FLAG>    Sample reads until success. [false]                 '
  type: boolean
  inputBinding:
    prefix: -z
- id: d
  doc: '<INT>     Minimum number of matching bases (both reads).[100] '
  type: boolean
  inputBinding:
    prefix: -d
- id: z
  doc: '<FLAG>    WHAM-GRAPHENING can fail if does not sample            enough reads.
    This flag prevents whamg                 from exiting. If your bam header has
    seqids not in     the bam (e.g. split by region) use -z.                '
  type: boolean
  inputBinding:
    prefix: -z
- id: i
  doc: '<STRING>  WHAM-GRAPHENING uses the optional bwa-mem SA tag.      Older version
    of bwa-mem used XP.                     '
  type: boolean
  inputBinding:
    prefix: -i
- id: e
  doc: '<STRING>  A list of seqids to include or exclude while           sampling
    insert and depth.  For humans you should      use the standard chromosomes 1,2,3...X,Y.             '
  type: boolean
  inputBinding:
    prefix: -e
outputs: []
cwlVersion: v1.1
baseCommand:
- whamg
