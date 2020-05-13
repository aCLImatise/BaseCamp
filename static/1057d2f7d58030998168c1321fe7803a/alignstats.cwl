class: CommandLineTool
id: alignstats.cwl
inputs:
- id: v
  doc: Print verbose runtime information output to stderr.
  type: boolean
  inputBinding:
    prefix: -v
- id: n
  doc: Maximum number of records to keep in memory.
  type: long
  inputBinding:
    prefix: -n
- id: p
  doc: Use separate threads for reading and processing records (requires builtin pthread
    support).
  type: boolean
  inputBinding:
    prefix: -p
- id: p
  doc: Number of HTSlib decompression threads to spawn.
  type: long
  inputBinding:
    prefix: -P
- id: i
  doc: Read INPUT as the input SAM, BAM, or CRAM file (stdin). Input must be coordinate-sorted
    for accurate results.
  type: string
  inputBinding:
    prefix: -i
- id: j
  doc: Specify file format of input alignment file ("sam", "bam", or "cram" available,
    default guessed from filename or "sam").
  type: string
  inputBinding:
    prefix: -j
- id: o
  doc: Write report to OUTPUT (stdout).
  type: string
  inputBinding:
    prefix: -o
- id: r
  doc: File in BED format listing which regions to process. By default, all available
    records are processed. This option requires the alignment file to be indexed.
  type: string
  inputBinding:
    prefix: -r
- id: t
  doc: File in BED format listing capture coverage regions. Required if capture coverage
    statistics are enabled.
  type: string
  inputBinding:
    prefix: -t
- id: m
  doc: File in BED format listing regions of N bases in reference. Coverage counts
    will be suppressed for these regions.
  type: string
  inputBinding:
    prefix: -m
- id: t
  doc: Indexed FASTA reference file for CRAM input alignment.
  type: string
  inputBinding:
    prefix: -T
- id: q
  doc: Only process records with minimum mapping quality of INT.
  type: long
  inputBinding:
    prefix: -q
- id: f
  doc: Only process records with all bits in INT set in FLAG.
  type: long
  inputBinding:
    prefix: -f
- id: f
  doc: Only process records with none of bits in INT set in FLAG.
  type: long
  inputBinding:
    prefix: -F
- id: b
  doc: Filter bases with base quality below INT from coverage statistics.
  type: long
  inputBinding:
    prefix: -b
- id: d
  doc: Disable excluding duplicate reads from coverage statistics.
  type: boolean
  inputBinding:
    prefix: -D
- id: m
  doc: Enable excluding overlapping bases in paired-end reads by determining overlapping
    bases from MC tag.
  type: boolean
  inputBinding:
    prefix: -M
- id: o
  doc: Enable excluding overlapping bases in paired-end reads from first read in coordinate-sorted
    order from coverage statistics.
  type: boolean
  inputBinding:
    prefix: -O
- id: u
  doc: Disable processing unplaced unmapped reads (CHROM "*") when using the -r option.
  type: boolean
  inputBinding:
    prefix: -U
- id: a
  doc: Disable reporting alignment statistics.
  type: boolean
  inputBinding:
    prefix: -A
- id: c
  doc: Disable reporting capture coverage statistics.
  type: boolean
  inputBinding:
    prefix: -C
- id: w
  doc: Disable reporting whole genome coverage statistics.
  type: boolean
  inputBinding:
    prefix: -W
outputs: []
cwlVersion: v1.1
baseCommand:
- alignstats
