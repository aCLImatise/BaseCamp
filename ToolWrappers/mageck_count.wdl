version 1.0

task MageckCount {
  input {
    File? list_seq
    Array[String] fast_q
    File? count_table
    String? norm_method
    String? control_sg_rna
    String? control_gene
    Int? sample_label
    File? output_prefix
    Boolean? unmapped_to_file
    Boolean? keep_tmp
    Boolean? test_run
    Array[Int] fast_q_two
    String? count_pair
    Int? trim_five
    Int? sg_rna_len
    Boolean? count_n
    Boolean? reverse_complement
    Boolean? pdf_report
    Int? day_zero_label
    File? gmt_file
    String mapping_dot
  }
  command <<<
    mageck count \
      ~{mapping_dot} \
      ~{if defined(list_seq) then ("--list-seq " +  '"' + list_seq + '"') else ""} \
      ~{if defined(fast_q) then ("--fastq " +  '"' + fast_q + '"') else ""} \
      ~{if defined(count_table) then ("--count-table " +  '"' + count_table + '"') else ""} \
      ~{if defined(norm_method) then ("--norm-method " +  '"' + norm_method + '"') else ""} \
      ~{if defined(control_sg_rna) then ("--control-sgrna " +  '"' + control_sg_rna + '"') else ""} \
      ~{if defined(control_gene) then ("--control-gene " +  '"' + control_gene + '"') else ""} \
      ~{if defined(sample_label) then ("--sample-label " +  '"' + sample_label + '"') else ""} \
      ~{if defined(output_prefix) then ("--output-prefix " +  '"' + output_prefix + '"') else ""} \
      ~{if (unmapped_to_file) then "--unmapped-to-file" else ""} \
      ~{if (keep_tmp) then "--keep-tmp" else ""} \
      ~{if (test_run) then "--test-run" else ""} \
      ~{if defined(fast_q_two) then ("--fastq-2 " +  '"' + fast_q_two + '"') else ""} \
      ~{if defined(count_pair) then ("--count-pair " +  '"' + count_pair + '"') else ""} \
      ~{if defined(trim_five) then ("--trim-5 " +  '"' + trim_five + '"') else ""} \
      ~{if defined(sg_rna_len) then ("--sgrna-len " +  '"' + sg_rna_len + '"') else ""} \
      ~{if (count_n) then "--count-n" else ""} \
      ~{if (reverse_complement) then "--reverse-complement" else ""} \
      ~{if (pdf_report) then "--pdf-report" else ""} \
      ~{if defined(day_zero_label) then ("--day0-label " +  '"' + day_zero_label + '"') else ""} \
      ~{if defined(gmt_file) then ("--gmt-file " +  '"' + gmt_file + '"') else ""}
  >>>
  parameter_meta {
    list_seq: "A file containing the list of sgRNA names, their\\nsequences and associated genes. Support file format:\\ncsv and txt. Provide an empty file for collecting all\\npossible sgRNA counts."
    fast_q: "Sample fastq files (or fastq.gz files, or SAM/BAM\\nfiles after v0.5.5), separated by space; use comma (,)\\nto indicate technical replicates of the same sample.\\nFor example, \\\"--fastq\\nsample1_replicate1.fastq,sample1_replicate2.fastq\\nsample2_replicate1.fastq,sample2_replicate2.fastq\\\"\\nindicates two samples with 2 technical replicates for\\neach sample."
    count_table: "The read count table file. Only 1 file is accepted."
    norm_method: "Method for normalization, including \\\"none\\\" (no\\nnormalization), \\\"median\\\" (median normalization,\\ndefault), \\\"total\\\" (normalization by total read\\ncounts), \\\"control\\\" (normalization by control sgRNAs\\nspecified by the --control-sgrna option)."
    control_sg_rna: "A list of control sgRNAs for normalization and for\\ngenerating the null distribution of RRA."
    control_gene: "A list of genes whose sgRNAs are used as control\\nsgRNAs for normalization and for generating the null\\ndistribution of RRA."
    sample_label: "Sample labels, separated by comma (,). Must be equal\\nto the number of samples provided (in --fastq option).\\nDefault \\\"sample1,sample2,...\\\"."
    output_prefix: "The prefix of the output file(s). Default sample1."
    unmapped_to_file: "Save unmapped reads to file, with sgRNA lengths\\nspecified by --sgrna-len option."
    keep_tmp: "Keep intermediate files."
    test_run: "Test running. If this option is on, MAGeCK will only\\nprocess the first 1M records for each file."
    fast_q_two: "Paired sample fastq files (or fastq.gz files), the\\norder of which should be consistent with that in fastq\\noption."
    count_pair: "Report all valid alignments per read or pair (default:\\nFalse)."
    trim_five: "Length of trimming the 5' of the reads. Users can\\nspecify multiple trimming lengths, separated by comma\\n(,); for example, \\\"7,8\\\". Use \\\"AUTO\\\" to allow MAGeCK to\\nautomatically determine the trimming length. Default\\nAUTO."
    sg_rna_len: "Length of the sgRNA. Default 20. ATTENTION: after\\nv0.5.3, the program will automatically determine the\\nsgRNA length from library file; so only use this if\\nyou turn on the --unmapped-to-file option."
    count_n: "Count sgRNAs with Ns. By default, sgRNAs containing N\\nwill be discarded."
    reverse_complement: "Reverse complement the sequences in library for read"
    pdf_report: "Generate pdf report of the fastq files."
    day_zero_label: "Turn on the negative selection QC and specify the\\nlabel for control sample (usually day 0 or plasmid).\\nFor every other sample label, the negative selection\\nQC will compare it with day0 sample, and estimate the\\ndegree of negative selections in essential genes."
    gmt_file: "The pathway file used for QC, in GMT format. By\\ndefault it will use the GMT file provided by MAGeCK.\\n"
    mapping_dot: "Optional arguments for quality controls:"
  }
  output {
    File out_stdout = stdout()
    File out_output_prefix = "${in_output_prefix}"
  }
}