version 1.0

task MultiBamSummaryBEDFile {
  input {
    File? bam_files
    String? out_filename
    File? bed
    Int? number_of_processors
    Boolean? verbose
    File? out_raw_counts
    File? scaling_factors
    Boolean? extend_reads
    Boolean? ignore_duplicates
    Int? min_mapping_quality
    Boolean? center_reads
    Int? sam_flag_include
    Int? sam_flag_exclude
    Int? min_fragment_length
    Int? max_fragment_length
    Boolean? meta_gene
    String? transcript_id
    String? exon_id
    String? transcript_id_designator
    File file_two_dot_bam
  }
  command <<<
    multiBamSummary BED-file \
      ~{file_two_dot_bam} \
      ~{if defined(bam_files) then ("--bamfiles " +  '"' + bam_files + '"') else ""} \
      ~{if defined(out_filename) then ("--outFileName " +  '"' + out_filename + '"') else ""} \
      ~{if defined(bed) then ("--BED " +  '"' + bed + '"') else ""} \
      ~{if defined(number_of_processors) then ("--numberOfProcessors " +  '"' + number_of_processors + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(out_raw_counts) then ("--outRawCounts " +  '"' + out_raw_counts + '"') else ""} \
      ~{if defined(scaling_factors) then ("--scalingFactors " +  '"' + scaling_factors + '"') else ""} \
      ~{true="--extendReads" false="" extend_reads} \
      ~{true="--ignoreDuplicates" false="" ignore_duplicates} \
      ~{if defined(min_mapping_quality) then ("--minMappingQuality " +  '"' + min_mapping_quality + '"') else ""} \
      ~{true="--centerReads" false="" center_reads} \
      ~{if defined(sam_flag_include) then ("--samFlagInclude " +  '"' + sam_flag_include + '"') else ""} \
      ~{if defined(sam_flag_exclude) then ("--samFlagExclude " +  '"' + sam_flag_exclude + '"') else ""} \
      ~{if defined(min_fragment_length) then ("--minFragmentLength " +  '"' + min_fragment_length + '"') else ""} \
      ~{if defined(max_fragment_length) then ("--maxFragmentLength " +  '"' + max_fragment_length + '"') else ""} \
      ~{true="--metagene" false="" meta_gene} \
      ~{if defined(transcript_id) then ("--transcriptID " +  '"' + transcript_id + '"') else ""} \
      ~{if defined(exon_id) then ("--exonID " +  '"' + exon_id + '"') else ""} \
      ~{if defined(transcript_id_designator) then ("--transcript_id_designator " +  '"' + transcript_id_designator + '"') else ""}
  >>>
  parameter_meta {
    bam_files: "FILE2 [FILE1 FILE2 ...], -b FILE1 FILE2 [FILE1 FILE2 ...] List of indexed bam files separated by spaces. (default: None)"
    out_filename: "File name to save the coverage matrix. This matrix can be subsequently plotted using plotCorrelation or or plotPCA. (default: None)"
    bed: "FILE2.bed [FILE1.bed FILE2.bed ...] Limits the coverage analysis to the regions specified in these files. (default: None)"
    number_of_processors: "Number of processors to use. Type \"max/2\" to use half the maximum number of processors or \"max\" to use all available processors. (Default: 1)"
    verbose: "Set to see processing messages. (default: False)"
    out_raw_counts: "Save the counts per region to a tab-delimited file. (default: None)"
    scaling_factors: "Compute scaling factors (in the DESeq2 manner) compatible for use with bamCoverage and write them to a file. The file has tab-separated columns \"sample\" and \"scalingFactor\". (default: None)"
    extend_reads: "[INT bp], -e [INT bp] This parameter allows the extension of reads to fragment size. If set, each read is extended, without exception. *NOTE*: This feature is generally NOT recommended for spliced-read data, such as RNA-seq, as it would extend reads over skipped regions. *Single- end*: Requires a user specified value for the final fragment length. Reads that already exceed this fragment length will not be extended. *Paired-end*: Reads with mates are always extended to match the fragment size defined by the two read mates. Unmated reads, mate reads that map too far apart (>4x fragment length) or even map to different chromosomes are treated like single-end reads. The input of a fragment length value is optional. If no value is specified, it is estimated from the data (mean of the fragment size of all mate reads). (default: False)"
    ignore_duplicates: "If set, reads that have the same orientation and start position will be considered only once. If reads are paired, the mate's position also has to coincide to ignore a read. (default: False)"
    min_mapping_quality: "If set, only reads that have a mapping quality score of at least this are considered. (default: None)"
    center_reads: "By adding this option, reads are centered with respect to the fragment length. For paired-end data, the read is centered at the fragment length defined by the two ends of the fragment. For single-end data, the given fragment length is used. This option is useful to get a sharper signal around enriched regions. (default: False)"
    sam_flag_include: "Include reads based on the SAM flag. For example, to get only reads that are the first mate, use a flag of 64. This is useful to count properly paired reads only once, as otherwise the second mate will be also considered for the coverage. (Default: None)"
    sam_flag_exclude: "Exclude reads based on the SAM flag. For example, to get only reads that map to the forward strand, use --samFlagExclude 16, where 16 is the SAM flag for reads that map to the reverse strand. (Default: None)"
    min_fragment_length: "The minimum fragment length needed for read/pair inclusion. This option is primarily useful in ATACseq experiments, for filtering mono- or di-nucleosome fragments. (Default: 0)"
    max_fragment_length: "The maximum fragment length needed for read/pair inclusion. (Default: 0)"
    meta_gene: "When either a BED12 or GTF file are used to provide regions, perform the computation on the merged exons, rather than using the genomic interval defined by the 5-prime and 3-prime most transcript bound (i.e., columns 2 and 3 of a BED file). If a BED3 or BED6 file is used as input, then columns 2 and 3 are used as an exon. (Default: False)"
    transcript_id: "When a GTF file is used to provide regions, only entries with this value as their feature (column 3) will be processed as transcripts. (Default: transcript)"
    exon_id: "When a GTF file is used to provide regions, only entries with this value as their feature (column 3) will be processed as exons. CDS would be another common value for this. (Default: exon)"
    transcript_id_designator: "Each region has an ID (e.g., ACTB) assigned to it, which for BED files is either column 4 (if it exists) or the interval bounds. For GTF files this is instead stored in the last column as a key:value pair (e.g., as 'transcript_id \"ACTB\"', for a key of transcript_id and a value of ACTB). In some cases it can be convenient to use a different identifier. To do so, set this to the desired key. (Default: transcript_id)"
    file_two_dot_bam: ""
  }
}