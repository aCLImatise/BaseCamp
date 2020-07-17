version 1.0

task Seqyclean {
  input {
    File? turns_trimming_filename
    File? turns_contaminants_screening
    String? common_size_kmer
    Boolean? distance_consecutive_kmers
    String? kc
    Int? qual
    String? bracket
    String? window
    Boolean? ow
    String? min_len
    Boolean? poly_at
    Boolean? verbose
    Boolean? det_rep
    Boolean? dup
    Boolean? no_adapter_trim
    String? number_yet_applicable
    Boolean? fast_q
    Boolean? fast_a_out
    File? using_custom_barcodes
    File? pairedend_mode_see
    File? _singleend_mode
    Boolean? shuffle
    Boolean? i_six_four
    File? adp
    String? at
    String? overlap
    Boolean? new_two_old
    Boolean? gz
    Boolean? alen
  }
  command <<<
    seqyclean \
      ~{if defined(turns_trimming_filename) then ("-v " +  '"' + turns_trimming_filename + '"') else ""} \
      ~{if defined(turns_contaminants_screening) then ("-c " +  '"' + turns_contaminants_screening + '"') else ""} \
      ~{if defined(common_size_kmer) then ("-k " +  '"' + common_size_kmer + '"') else ""} \
      ~{true="-d" false="" distance_consecutive_kmers} \
      ~{if defined(kc) then ("-kc " +  '"' + kc + '"') else ""} \
      ~{if defined(qual) then ("-qual " +  '"' + qual + '"') else ""} \
      ~{if defined(bracket) then ("-bracket " +  '"' + bracket + '"') else ""} \
      ~{if defined(window) then ("-window " +  '"' + window + '"') else ""} \
      ~{true="-ow" false="" ow} \
      ~{if defined(min_len) then ("-minlen " +  '"' + min_len + '"') else ""} \
      ~{true="-polyat" false="" poly_at} \
      ~{true="-verbose" false="" verbose} \
      ~{true="-detrep" false="" det_rep} \
      ~{true="-dup" false="" dup} \
      ~{true="-no_adapter_trim" false="" no_adapter_trim} \
      ~{if defined(number_yet_applicable) then ("-t " +  '"' + number_yet_applicable + '"') else ""} \
      ~{true="-fastq" false="" fast_q} \
      ~{true="-fasta_out" false="" fast_a_out} \
      ~{if defined(using_custom_barcodes) then ("-m " +  '"' + using_custom_barcodes + '"') else ""} \
      ~{if defined(pairedend_mode_see) then ("-1 " +  '"' + pairedend_mode_see + '"') else ""} \
      ~{if defined(_singleend_mode) then ("-U " +  '"' + _singleend_mode + '"') else ""} \
      ~{true="-shuffle" false="" shuffle} \
      ~{true="-i64" false="" i_six_four} \
      ~{if defined(adp) then ("-adp " +  '"' + adp + '"') else ""} \
      ~{if defined(at) then ("-at " +  '"' + at + '"') else ""} \
      ~{if defined(overlap) then ("-overlap " +  '"' + overlap + '"') else ""} \
      ~{true="-new2old" false="" new_two_old} \
      ~{true="-gz" false="" gz} \
      ~{true="-alen" false="" alen}
  >>>
  parameter_meta {
    turns_trimming_filename: "- Turns on vector trimming, default=off. <filename> - is a path to a FASTA-file containing vector genomes."
    turns_contaminants_screening: "- Turns on contaminants screening, default=off, <filename> - is a path to a FASTA-file containing contaminant genomes."
    common_size_kmer: "- Common size of k-mer, default=15"
    distance_consecutive_kmers: "- Distance between consecutive k-mers, default=1"
    kc: "- Size of k-mer used in sampling contaminat genome, default=15"
    qual: "<max_error_at_ends> - Turns on quality trimming, default=off. Error boundaries: max_average_error (default=0.01), max_error_at_ends (default=0.01)"
    bracket: "<max_avg_error> - Bracket window_size (default=0.794) and maximum_average_error (default=0.794) for quality trimming"
    window: "max_avg_error [window_size max_avg_error ...] - Parameters for window trimming. There are two windows with size of 50 and 10bp and max_avg_err of 0.794 by default."
    ow: "- Overwrite existing results, default=off"
    min_len: "- Minimum length of read to accept, default=50 bp."
    poly_at: "[cdna] [cerr] [crng] - Turns on poly A/T trimming, default=off. Parameters: cdna (default=10) - maximum size of a poly tail, cerr (default=3) - maximum number of G/C nucleotides within a tail, cnrg (default=50) - range to look for a tail within a read."
    verbose: "- Verbose output, default=off."
    det_rep: "- Generate detailed report for each read, default=off."
    dup: "[-startdw 10][-sizedw 35] [-maxdup 3] - Turns on screening duplicated sequences, default=off. Here: -startdw (defalt=10) and -sizedw (default=25) are starting position and size of the window within a read, -maxdup (default=3) - maximum number of duplicated sequences allowed."
    no_adapter_trim: "- Turns off trimming of adapters, default=off."
    number_yet_applicable: "- Number of threads (not yet applicable to Illumina mode), default=4."
    fast_q: "- Output in FASTQ format, default=off."
    fast_a_out: "- Output in FASTA format, default=off."
    using_custom_barcodes: "- Using custom barcodes, default=off. <filename> - a path to a FASTA-file with custom barcodes."
    pairedend_mode_see: "- Paired-end mode (see examples below)"
    _singleend_mode: "- Single-end mode"
    shuffle: "- Store non-paired Illumina reads in shuffled file, default=off."
    i_six_four: "- Turns on 64-quality base, default = off."
    adp: "- Turns on using custom adapters, default=off. <filename> - FASTA file with adapters"
    at: "- This option sets the similarity threshold for adapter trimming by overlap (only in paired-end mode). By default its value is set to 0.75."
    overlap: "- This option turns on merging overlapping paired-end reads and <value> is the minimum overlap length. By default the minimum overlap length is 16 base pairs."
    new_two_old: "- Switch to fix read IDs, default=off ( As is detailed in: http://contig.wordpress.com/2011/09/01/newbler-input-iii-a-quick-fix-for-the-new-illumina-fastq-header/#more-342 )."
    gz: "- compressed output (GZip format, .gz)."
    alen: "- Maximum adapter length, default=30 bp.(only for paired-end mode)"
  }
}