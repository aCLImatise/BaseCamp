class: CommandLineTool
id: seqyclean.cwl
inputs:
- id: turns
  doc: vector trimming, default=off. <filename> - is a path to a FASTA-file containing
    vector genomes.
  type: File
  inputBinding:
    prefix: '- Turns'
- id: turns
  doc: contaminants screening, default=off, <filename> - is a path to a FASTA-file
    containing contaminant genomes.
  type: File
  inputBinding:
    prefix: '- Turns'
- id: common
  doc: of k-mer, default=15
  type: string
  inputBinding:
    prefix: '- Common'
- id: distance
  doc: consecutive k-mers, default=1
  type: string
  inputBinding:
    prefix: '- Distance'
- id: size
  doc: k-mer used in sampling contaminat genome, default=15
  type: string
  inputBinding:
    prefix: '- Size'
- id: qual
  doc: '<max_error_at_ends> - Turns on quality trimming, default=off. Error boundaries:
    max_average_error (default=0.01), max_error_at_ends (default=0.01)'
  type: long
  inputBinding:
    prefix: -qual
- id: bracket
  doc: <max_avg_error> - Bracket window_size (default=0.794) and maximum_average_error
    (default=0.794) for quality trimming
  type: string
  inputBinding:
    prefix: -bracket
- id: window
  doc: max_avg_error [window_size max_avg_error ...] - Parameters for window trimming.
    There are two windows with size of 50 and 10bp and max_avg_err of 0.794 by default.
  type: string
  inputBinding:
    prefix: -window
- id: overwrite
  doc: results, default=off
  type: string
  inputBinding:
    prefix: '- Overwrite'
- id: minimum
  doc: of read to accept, default=50 bp.
  type: string
  inputBinding:
    prefix: '- Minimum'
- id: poly_at
  doc: '[cdna] [cerr] [crng] - Turns on poly A/T trimming, default=off. Parameters:
    cdna (default=10) - maximum size of a poly tail, cerr (default=3) - maximum number
    of G/C nucleotides within a tail, cnrg (default=50) - range to look for a tail
    within a read.'
  type: boolean
  inputBinding:
    prefix: -polyat
- id: verbose
  doc: ', default=off.'
  type: string
  inputBinding:
    prefix: '- Verbose'
- id: generate
  doc: report for each read, default=off.
  type: string
  inputBinding:
    prefix: '- Generate'
- id: dup
  doc: '[-startdw 10][-sizedw 35] [-maxdup 3] - Turns on screening duplicated sequences,
    default=off. Here: -startdw (defalt=10) and -sizedw (default=25) are starting
    position and size of the window within a read, -maxdup (default=3) - maximum number
    of duplicated sequences allowed.'
  type: boolean
  inputBinding:
    prefix: -dup
- id: no_adapter_trim
  doc: trimming of adapters, default=off.
  type: string
  inputBinding:
    prefix: -no_adapter_trim
- id: number
  doc: threads (not yet applicable to Illumina mode), default=4.
  type: string
  inputBinding:
    prefix: '- Number'
- id: output
  doc: FASTQ format, default=off.
  type: string
  inputBinding:
    prefix: '- Output'
- id: fast_a_out
  doc: FASTA format, default=off.
  type: string
  inputBinding:
    prefix: -fasta_out
- id: using
  doc: barcodes, default=off. <filename> - a path to a FASTA-file with custom barcodes.
  type: File
  inputBinding:
    prefix: '- Using'
- id: shuffle
  doc: Illumina reads in shuffled file, default=off.
  type: string
  inputBinding:
    prefix: -shuffle
- id: turns
  doc: 64-quality base, default = off.
  type: string
  inputBinding:
    prefix: '- Turns'
- id: turns
  doc: using custom adapters, default=off. <filename> - FASTA file with adapters
  type: File
  inputBinding:
    prefix: '- Turns'
- id: this
  doc: sets the similarity threshold for adapter trimming by overlap (only in paired-end
    mode). By default its value is set to 0.75.
  type: string
  inputBinding:
    prefix: '- This'
- id: overlap
  doc: turns on merging overlapping paired-end reads and <value> is the minimum overlap
    length. By default the minimum overlap length is 16 base pairs.
  type: string
  inputBinding:
    prefix: -overlap
- id: new_2old
  doc: 'fix read IDs, default=off ( As is detailed in: http://contig.wordpress.com/2011/09/01/newbler-input-iii-a-quick-fix-for-the-new-illumina-fastq-header/#more-342
    ).'
  type: string
  inputBinding:
    prefix: -new2old
- id: compressed
  doc: (GZip format, .gz).
  type: string
  inputBinding:
    prefix: '- compressed'
- id: maximum
  doc: length, default=30 bp.(only for paired-end mode)
  type: string
  inputBinding:
    prefix: '- Maximum'
outputs: []
cwlVersion: v1.1
baseCommand:
- seqyclean
