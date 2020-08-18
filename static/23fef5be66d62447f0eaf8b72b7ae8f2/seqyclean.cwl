class: CommandLineTool
id: ../../../seqyclean.cwl
inputs:
- id: turns_trimming_filename
  doc: '- Turns on vector trimming, default=off. <filename> - is a path to a FASTA-file
    containing vector genomes.'
  type: File
  inputBinding:
    prefix: -v
- id: turns_contaminants_screening
  doc: '- Turns on contaminants screening, default=off, <filename> - is a path to
    a FASTA-file containing contaminant genomes.'
  type: File
  inputBinding:
    prefix: -c
- id: common_size_kmer
  doc: '- Common size of k-mer, default=15'
  type: string
  inputBinding:
    prefix: -k
- id: distance_consecutive_kmers
  doc: '- Distance between consecutive k-mers, default=1'
  type: boolean
  inputBinding:
    prefix: -d
- id: kc
  doc: '- Size of k-mer used in sampling contaminat genome, default=15'
  type: string
  inputBinding:
    prefix: -kc
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
- id: ow
  doc: '- Overwrite existing results, default=off'
  type: boolean
  inputBinding:
    prefix: -ow
- id: min_len
  doc: '- Minimum length of read to accept, default=50 bp.'
  type: string
  inputBinding:
    prefix: -minlen
- id: poly_at
  doc: '[cdna] [cerr] [crng] - Turns on poly A/T trimming, default=off. Parameters:
    cdna (default=10) - maximum size of a poly tail, cerr (default=3) - maximum number
    of G/C nucleotides within a tail, cnrg (default=50) - range to look for a tail
    within a read.'
  type: boolean
  inputBinding:
    prefix: -polyat
- id: verbose
  doc: '- Verbose output, default=off.'
  type: boolean
  inputBinding:
    prefix: -verbose
- id: det_rep
  doc: '- Generate detailed report for each read, default=off.'
  type: boolean
  inputBinding:
    prefix: -detrep
- id: dup
  doc: '[-startdw 10][-sizedw 35] [-maxdup 3] - Turns on screening duplicated sequences,
    default=off. Here: -startdw (defalt=10) and -sizedw (default=25) are starting
    position and size of the window within a read, -maxdup (default=3) - maximum number
    of duplicated sequences allowed.'
  type: boolean
  inputBinding:
    prefix: -dup
- id: no_adapter_trim
  doc: '- Turns off trimming of adapters, default=off.'
  type: boolean
  inputBinding:
    prefix: -no_adapter_trim
- id: number_yet_applicable
  doc: '- Number of threads (not yet applicable to Illumina mode), default=4.'
  type: string
  inputBinding:
    prefix: -t
- id: fast_q
  doc: '- Output in FASTQ format, default=off.'
  type: boolean
  inputBinding:
    prefix: -fastq
- id: fast_a_out
  doc: '- Output in FASTA format, default=off.'
  type: boolean
  inputBinding:
    prefix: -fasta_out
- id: using_custom_barcodes
  doc: '- Using custom barcodes, default=off. <filename> - a path to a FASTA-file
    with custom barcodes.'
  type: File
  inputBinding:
    prefix: -m
- id: pairedend_mode_see
  doc: '- Paired-end mode (see examples below)'
  type: File
  inputBinding:
    prefix: '-1'
- id: _singleend_mode
  doc: '- Single-end mode'
  type: File
  inputBinding:
    prefix: -U
- id: shuffle
  doc: '- Store non-paired Illumina reads in shuffled file, default=off.'
  type: boolean
  inputBinding:
    prefix: -shuffle
- id: i_six_four
  doc: '- Turns on 64-quality base, default = off.'
  type: boolean
  inputBinding:
    prefix: -i64
- id: adp
  doc: '- Turns on using custom adapters, default=off. <filename> - FASTA file with
    adapters'
  type: File
  inputBinding:
    prefix: -adp
- id: at
  doc: '- This option sets the similarity threshold for adapter trimming by overlap
    (only in paired-end mode). By default its value is set to 0.75.'
  type: string
  inputBinding:
    prefix: -at
- id: overlap
  doc: '- This option turns on merging overlapping paired-end reads and <value> is
    the minimum overlap length. By default the minimum overlap length is 16 base pairs.'
  type: string
  inputBinding:
    prefix: -overlap
- id: new_two_old
  doc: '- Switch to fix read IDs, default=off ( As is detailed in: http://contig.wordpress.com/2011/09/01/newbler-input-iii-a-quick-fix-for-the-new-illumina-fastq-header/#more-342
    ).'
  type: boolean
  inputBinding:
    prefix: -new2old
- id: gz
  doc: '- compressed output (GZip format, .gz).'
  type: boolean
  inputBinding:
    prefix: -gz
- id: alen
  doc: '- Maximum adapter length, default=30 bp.(only for paired-end mode)'
  type: boolean
  inputBinding:
    prefix: -alen
outputs: []
cwlVersion: v1.1
baseCommand:
- seqyclean
