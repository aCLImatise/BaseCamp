class: CommandLineTool
id: mini_align.cwl
inputs:
- id: r
  doc: reference, should be a fasta file. If correspondng minimap indices do not exist
    they will be created. (required).
  type: boolean
  inputBinding:
    prefix: -r
- id: i
  doc: fastq/a input reads (required).
  type: boolean
  inputBinding:
    prefix: -i
- id: i
  doc: 'split index every ~NUM input bases (default: 16G, this is larger than the
    usual minimap2 default).'
  type: boolean
  inputBinding:
    prefix: -I
- id: f
  doc: force recreation of index file.
  type: boolean
  inputBinding:
    prefix: -f
- id: a
  doc: aggressively extend gaps (sets -A1 -B2 -O2 -E1 for minimap2).
  type: boolean
  inputBinding:
    prefix: -a
- id: p
  doc: 'filter to only primary alignments (i.e. run samtools view -F 2308). Deprecated:
    this filter is now default and can be disabled with -A.'
  type: boolean
  inputBinding:
    prefix: -P
- id: a
  doc: do not filter alignments to primary alignments, output all.
  type: boolean
  inputBinding:
    prefix: -A
- id: n
  doc: sort bam by read name.
  type: boolean
  inputBinding:
    prefix: -n
- id: c
  doc: chunk size. Input reads/contigs will be broken into chunks prior to alignment.
  type: boolean
  inputBinding:
    prefix: -c
- id: t
  doc: 'alignment threads (default: 1).'
  type: boolean
  inputBinding:
    prefix: -t
- id: p
  doc: 'output file prefix (default: reads).'
  type: boolean
  inputBinding:
    prefix: -p
- id: m
  doc: fill MD tag.
  type: boolean
  inputBinding:
    prefix: -m
- id: s
  doc: fill cs(=long) tag.
  type: boolean
  inputBinding:
    prefix: -s
- id: x
  doc: only create reference index files.
  type: boolean
  inputBinding:
    prefix: -X
- id: x
  doc: log all commands before running.
  type: boolean
  inputBinding:
    prefix: -x
outputs: []
cwlVersion: v1.1
baseCommand:
- mini_align
