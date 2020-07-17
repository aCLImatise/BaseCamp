version 1.0

task MageckCount {
  input {
    String? list_seq
    Array[String] fast_q
    String? count_table
    String? norm_method
    String? control_sg_rna
    String? control_gene
    String? sample_label
    String? output_prefix
    Boolean? unmapped_to_file
    Boolean? keep_tmp
    Boolean? test_run
    Array[String] fast_q_two
    String? count_pair
    String? trim_five
    String? sg_rna_len
    Boolean? count_n
    Boolean? reverse_complement
    Boolean? pdf_report
    String? day_zero_label
    String? gmt_file
  }
  command <<<
    mageck count \
      ~{if defined(list_seq) then ("--list-seq " +  '"' + list_seq + '"') else ""} \
      ~{if defined(fast_q) then ("--fastq " +  '"' + fast_q + '"') else ""} \
      ~{if defined(count_table) then ("--count-table " +  '"' + count_table + '"') else ""} \
      ~{if defined(norm_method) then ("--norm-method " +  '"' + norm_method + '"') else ""} \
      ~{if defined(control_sg_rna) then ("--control-sgrna " +  '"' + control_sg_rna + '"') else ""} \
      ~{if defined(control_gene) then ("--control-gene " +  '"' + control_gene + '"') else ""} \
      ~{if defined(sample_label) then ("--sample-label " +  '"' + sample_label + '"') else ""} \
      ~{if defined(output_prefix) then ("--output-prefix " +  '"' + output_prefix + '"') else ""} \
      ~{true="--unmapped-to-file" false="" unmapped_to_file} \
      ~{true="--keep-tmp" false="" keep_tmp} \
      ~{true="--test-run" false="" test_run} \
      ~{if defined(fast_q_two) then ("--fastq-2 " +  '"' + fast_q_two + '"') else ""} \
      ~{if defined(count_pair) then ("--count-pair " +  '"' + count_pair + '"') else ""} \
      ~{if defined(trim_five) then ("--trim-5 " +  '"' + trim_five + '"') else ""} \
      ~{if defined(sg_rna_len) then ("--sgrna-len " +  '"' + sg_rna_len + '"') else ""} \
      ~{true="--count-n" false="" count_n} \
      ~{true="--reverse-complement" false="" reverse_complement} \
      ~{true="--pdf-report" false="" pdf_report} \
      ~{if defined(day_zero_label) then ("--day0-label " +  '"' + day_zero_label + '"') else ""} \
      ~{if defined(gmt_file) then ("--gmt-file " +  '"' + gmt_file + '"') else ""}
  >>>
  parameter_meta {
    list_seq: "A file containing the list of sgRNA names, their sequences and associated genes. Support file format: csv and txt. Provide an empty file for collecting all possible sgRNA counts."
    fast_q: "Sample fastq files (or fastq.gz files, or SAM/BAM files after v0.5.5), separated by space; use comma (,) to indicate technical replicates of the same sample. For example, \"--fastq sample1_replicate1.fastq,sample1_replicate2.fastq sample2_replicate1.fastq,sample2_replicate2.fastq\" indicates two samples with 2 technical replicates for each sample."
    count_table: "The read count table file. Only 1 file is accepted."
    norm_method: "Method for normalization, including \"none\" (no normalization), \"median\" (median normalization, default), \"total\" (normalization by total read counts), \"control\" (normalization by control sgRNAs specified by the --control-sgrna option)."
    control_sg_rna: "A list of control sgRNAs for normalization and for generating the null distribution of RRA."
    control_gene: "A list of genes whose sgRNAs are used as control sgRNAs for normalization and for generating the null distribution of RRA."
    sample_label: "Sample labels, separated by comma (,). Must be equal to the number of samples provided (in --fastq option). Default \"sample1,sample2,...\"."
    output_prefix: "The prefix of the output file(s). Default sample1."
    unmapped_to_file: "Save unmapped reads to file, with sgRNA lengths specified by --sgrna-len option."
    keep_tmp: "Keep intermediate files."
    test_run: "Test running. If this option is on, MAGeCK will only process the first 1M records for each file."
    fast_q_two: "Paired sample fastq files (or fastq.gz files), the order of which should be consistent with that in fastq option."
    count_pair: "Report all valid alignments per read or pair (default: False)."
    trim_five: "Length of trimming the 5' of the reads. Users can specify multiple trimming lengths, separated by comma (,); for example, \"7,8\". Use \"AUTO\" to allow MAGeCK to automatically determine the trimming length. Default AUTO."
    sg_rna_len: "Length of the sgRNA. Default 20. ATTENTION: after v0.5.3, the program will automatically determine the sgRNA length from library file; so only use this if you turn on the --unmapped-to-file option."
    count_n: "Count sgRNAs with Ns. By default, sgRNAs containing N will be discarded."
    reverse_complement: "Reverse complement the sequences in library for read mapping."
    pdf_report: "Generate pdf report of the fastq files."
    day_zero_label: "Turn on the negative selection QC and specify the label for control sample (usually day 0 or plasmid). For every other sample label, the negative selection QC will compare it with day0 sample, and estimate the degree of negative selections in essential genes."
    gmt_file: "The pathway file used for QC, in GMT format. By default it will use the GMT file provided by MAGeCK."
  }
}