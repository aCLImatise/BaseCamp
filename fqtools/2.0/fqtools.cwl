class: CommandLineTool
id: fqtools.cwl
inputs:
- id: u
  doc: Do not assume specifc quality score encoding
  type: string
  inputBinding:
    position: 0
- id: s
  doc: Interpret quality scores as Sanger encoded
  type: string
  inputBinding:
    position: 1
- id: o
  doc: Interpret quality scores as Solexa encoded
  type: string
  inputBinding:
    position: 2
- id: i
  doc: Interpret quality scores as Illumina encoded
  type: string
  inputBinding:
    position: 3
- id: f
  doc: uncompressed FASTQ format (.fastq)
  type: string
  inputBinding:
    position: 0
- id: f
  doc: compressed FASTQ format (.fastq.gz)
  type: string
  inputBinding:
    position: 1
- id: b
  doc: BAM format (.bam)
  type: string
  inputBinding:
    position: 2
- id: s
  doc: SAM format (.sam)
  type: string
  inputBinding:
    position: 3
- id: u
  doc: attempt to infer format from file extension, (default .fastq.gz)
  type: string
  inputBinding:
    position: 4
- id: v
  doc: Show the program version and exit.
  type: boolean
  inputBinding:
    prefix: -v
- id: d
  doc: Allow DNA sequence bases       (ACGTN)
  type: boolean
  inputBinding:
    prefix: -d
- id: r
  doc: Allow RNA sequence bases       (ACGUN)
  type: boolean
  inputBinding:
    prefix: -r
- id: a
  doc: Allow ambiguous sequence bases (RYKMSWBDHV)
  type: boolean
  inputBinding:
    prefix: -a
- id: m
  doc: Allow mask sequence base       (X)
  type: boolean
  inputBinding:
    prefix: -m
- id: u
  doc: Allow uppercase sequence bases
  type: boolean
  inputBinding:
    prefix: -u
- id: l
  doc: Allow lowercase sequence bases
  type: boolean
  inputBinding:
    prefix: -l
- id: p
  doc: Set the pair replacement character (default "%")
  type: string
  inputBinding:
    prefix: -p
- id: b
  doc: Set the input buffer size
  type: string
  inputBinding:
    prefix: -b
- id: b
  doc: Set the output buffer size
  type: string
  inputBinding:
    prefix: -B
- id: q
  doc: Set the quality score encoding
  type: string
  inputBinding:
    prefix: -q
- id: f
  doc: Set the input file format
  type: string
  inputBinding:
    prefix: -f
- id: f
  doc: Set the output file format
  type: string
  inputBinding:
    prefix: -F
- id: i
  doc: Read interleaved input file pairs
  type: boolean
  inputBinding:
    prefix: -i
- id: i
  doc: Write interleaved output file pairs
  type: boolean
  inputBinding:
    prefix: -I
outputs: []
cwlVersion: v1.1
baseCommand:
- fqtools
