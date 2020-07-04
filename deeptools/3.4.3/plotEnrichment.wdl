version 1.0

task PlotEnrichment {
  input {
    File? bam_files
    File? bed
    Int? number_of_processors
    Boolean? verbose
    Boolean? keep_exons
    Boolean? extend_reads
    Boolean? ignore_duplicates
    Int? min_mapping_quality
    Boolean? center_reads
    Int? sam_flag_include
    Int? sam_flag_exclude
    Int? min_fragment_length
    Int? max_fragment_length
    File file_two_dot_bam
  }
  command <<<
    plotEnrichment \
      ~{file_two_dot_bam} \
      ~{if defined(bam_files) then ("--bamfiles " +  '"' + bam_files + '"') else ""} \
      ~{if defined(bed) then ("--BED " +  '"' + bed + '"') else ""} \
      ~{if defined(number_of_processors) then ("--numberOfProcessors " +  '"' + number_of_processors + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--keepExons" false="" keep_exons} \
      ~{true="--extendReads" false="" extend_reads} \
      ~{true="--ignoreDuplicates" false="" ignore_duplicates} \
      ~{if defined(min_mapping_quality) then ("--minMappingQuality " +  '"' + min_mapping_quality + '"') else ""} \
      ~{true="--centerReads" false="" center_reads} \
      ~{if defined(sam_flag_include) then ("--samFlagInclude " +  '"' + sam_flag_include + '"') else ""} \
      ~{if defined(sam_flag_exclude) then ("--samFlagExclude " +  '"' + sam_flag_exclude + '"') else ""} \
      ~{if defined(min_fragment_length) then ("--minFragmentLength " +  '"' + min_fragment_length + '"') else ""} \
      ~{if defined(max_fragment_length) then ("--maxFragmentLength " +  '"' + max_fragment_length + '"') else ""}
  >>>
  parameter_meta {
    bam_files: "file2.bam [file1.bam file2.bam ...], -b file1.bam file2.bam [file1.bam file2.bam ...] List of indexed bam files separated by spaces."
    bed: "FILE2.bed [FILE1.bed FILE2.bed ...] Limits the enrichment analysis to the regions specified in these BED/GTF files. Enrichment is calculated as the number of reads overlapping each feature type. The feature type is column 3 in a GTF file and \"peak\" for BED files."
    number_of_processors: "Number of processors to use. Type \"max/2\" to use half the maximum number of processors or \"max\" to use all available processors. (Default: 1)"
    verbose: "Set to see processing messages."
    keep_exons: "For BED12 files, use each exon as a region, rather than columns 2/3"
    extend_reads: "[INT bp], -e [INT bp] This parameter allows the extension of reads to fragment size. If set, each read is extended, without exception. *NOTE*: This feature is generally NOT recommended for spliced-read data, such as RNA-seq, as it would extend reads over skipped regions. *Single- end*: Requires a user specified value for the final fragment length. Reads that already exceed this fragment length will not be extended. *Paired-end*: Reads with mates are always extended to match the fragment size defined by the two read mates. Unmated reads, mate reads that map too far apart (>4x fragment length) or even map to different chromosomes are treated like single-end reads. The input of a fragment length value is optional. If no value is specified, it is estimated from the data (mean of the fragment size of all mate reads)."
    ignore_duplicates: "If set, reads that have the same orientation and start position will be considered only once. If reads are paired, the mate's position also has to coincide to ignore a read."
    min_mapping_quality: "If set, only reads that have a mapping quality score of at least this are considered."
    center_reads: "By adding this option, reads are centered with respect to the fragment length. For paired-end data, the read is centered at the fragment length defined by the two ends of the fragment. For single-end data, the given fragment length is used. This option is useful to get a sharper signal around enriched regions."
    sam_flag_include: "Include reads based on the SAM flag. For example, to get only reads that are the first mate, use a flag of 64. This is useful to count properly paired reads only once, as otherwise the second mate will be also considered for the coverage. (Default: None)"
    sam_flag_exclude: "Exclude reads based on the SAM flag. For example, to get only reads that map to the forward strand, use --samFlagExclude 16, where 16 is the SAM flag for reads that map to the reverse strand. (Default: None)"
    min_fragment_length: "The minimum fragment length needed for read/pair inclusion. This option is primarily useful in ATACseq experiments, for filtering mono- or di-nucleosome fragments. (Default: 0)"
    max_fragment_length: "The maximum fragment length needed for read/pair inclusion. (Default: 0)"
    file_two_dot_bam: ""
  }
}