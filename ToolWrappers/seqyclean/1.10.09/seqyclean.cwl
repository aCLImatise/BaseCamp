class: CommandLineTool
id: seqyclean.cwl
inputs:
- id: in_turns_vector_trimming
  doc: '- Turns on vector trimming, default=off. <filename> - is a path to a FASTA-file
    containing vector genomes.'
  type: File?
  inputBinding:
    prefix: -v
- id: in_turns_contaminants_screening
  doc: '- Turns on contaminants screening, default=off, <filename> - is a path to
    a FASTA-file containing contaminant genomes.'
  type: File?
  inputBinding:
    prefix: -c
- id: in_common_size_kmer
  doc: '- Common size of k-mer, default=15'
  type: long?
  inputBinding:
    prefix: -k
- id: in_distance_consecutive_kmers
  doc: '- Distance between consecutive k-mers, default=1'
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_kc
  doc: '- Size of k-mer used in sampling contaminat genome, default=15'
  type: long?
  inputBinding:
    prefix: -kc
- id: in_qual
  doc: '<max_error_at_ends> - Turns on quality trimming, default=off. Error boundaries:
    max_average_error (default=0.01), max_error_at_ends (default=0.01)'
  type: long?
  inputBinding:
    prefix: -qual
- id: in_bracket
  doc: <max_avg_error> - Bracket window_size (default=0.794) and maximum_average_error
    (default=0.794) for quality trimming
  type: long?
  inputBinding:
    prefix: -bracket
- id: in_window
  doc: max_avg_error [window_size max_avg_error ...] - Parameters for window trimming.
    There are two windows with size of 50 and 10bp and max_avg_err of 0.794 by default.
  type: long?
  inputBinding:
    prefix: -window
- id: in_ow
  doc: '- Overwrite existing results, default=off'
  type: boolean?
  inputBinding:
    prefix: -ow
- id: in_min_len
  doc: '- Minimum length of read to accept, default=50 bp.'
  type: long?
  inputBinding:
    prefix: -minlen
- id: in_poly_at
  doc: '[cdna] [cerr] [crng] - Turns on poly A/T trimming, default=off. Parameters:
    cdna (default=10) - maximum size of a poly tail, cerr (default=3) - maximum number
    of G/C nucleotides within a tail, cnrg (default=50) - range to look for a tail
    within a read.'
  type: boolean?
  inputBinding:
    prefix: -polyat
- id: in_verbose
  doc: '- Verbose output, default=off.'
  type: boolean?
  inputBinding:
    prefix: -verbose
- id: in_det_rep
  doc: '- Generate detailed report for each read, default=off.'
  type: boolean?
  inputBinding:
    prefix: -detrep
- id: in_dup
  doc: '[-startdw 10][-sizedw 35] [-maxdup 3] - Turns on screening duplicated sequences,
    default=off. Here: -startdw (defalt=10) and -sizedw (default=25) are starting
    position and size of the window within a read, -maxdup (default=3) - maximum number
    of duplicated sequences allowed.'
  type: boolean?
  inputBinding:
    prefix: -dup
- id: in_no_adapter_trim
  doc: '- Turns off trimming of adapters, default=off.'
  type: boolean?
  inputBinding:
    prefix: -no_adapter_trim
- id: in_number_yet_applicable
  doc: '- Number of threads (not yet applicable to Illumina mode), default=4.'
  type: long?
  inputBinding:
    prefix: -t
- id: in_fast_q
  doc: '- Output in FASTQ format, default=off.'
  type: boolean?
  inputBinding:
    prefix: -fastq
- id: in_fast_a_out
  doc: '- Output in FASTA format, default=off.'
  type: boolean?
  inputBinding:
    prefix: -fasta_out
- id: in_using_custom_filename
  doc: '- Using custom barcodes, default=off. <filename> - a path to a FASTA-file
    with custom barcodes.'
  type: File?
  inputBinding:
    prefix: -m
- id: in_pairedend_mode_see
  doc: '- Paired-end mode (see examples below)'
  type: File?
  inputBinding:
    prefix: '-1'
- id: in__singleend_mode
  doc: '- Single-end mode'
  type: File?
  inputBinding:
    prefix: -U
- id: in_shuffle
  doc: '- Store non-paired Illumina reads in shuffled file, default=off.'
  type: boolean?
  inputBinding:
    prefix: -shuffle
- id: in_i_six_four
  doc: '- Turns on 64-quality base, default = off.'
  type: boolean?
  inputBinding:
    prefix: -i64
- id: in_adp
  doc: '- Turns on using custom adapters, default=off. <filename> - FASTA file with
    adapters'
  type: File?
  inputBinding:
    prefix: -adp
- id: in_at
  doc: '- This option sets the similarity threshold for adapter trimming by overlap
    (only in paired-end mode). By default its value is set to 0.75.'
  type: double?
  inputBinding:
    prefix: -at
- id: in_overlap
  doc: '- This option turns on merging overlapping paired-end reads and <value> is
    the minimum overlap length. By default the minimum overlap length is 16 base pairs.'
  type: long?
  inputBinding:
    prefix: -overlap
- id: in_new_two_old
  doc: '- Switch to fix read IDs, default=off ( As is detailed in: http://contig.wordpress.com/2011/09/01/newbler-input-iii-a-quick-fix-for-the-new-illumina-fastq-header/#more-342
    ).'
  type: boolean?
  inputBinding:
    prefix: -new2old
- id: in_gz
  doc: '- compressed output (GZip format, .gz).'
  type: boolean?
  inputBinding:
    prefix: -gz
- id: in_alen
  doc: '- Maximum adapter length, default=30 bp.(only for paired-end mode)'
  type: boolean?
  inputBinding:
    prefix: -alen
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- seqyclean
