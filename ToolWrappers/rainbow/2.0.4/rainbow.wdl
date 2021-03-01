version 1.0

task Rainbow {
  input {
    Int? input_fastafastq_file_supports_multiple
    Int? input_fastafastq_file_supports_multiple_
    Int? read_length_default
    Int? maximum_mismatches
    Int? exactly_matching_threshold
    Boolean? low_level_polymorphism
    File? input_file
    File? output_file
    Int? kallele_min_variants
    Int? kallele_divide_regardless
    Float? frequency_min_variant
    Boolean? output_assembly
    Int? maximum_number_divided
    Int? minimum_number_reads
    Int? maximum_number_reads
    String merge
  }
  command <<<
    rainbow \
      ~{merge} \
      ~{if defined(input_fastafastq_file_supports_multiple) then ("-1 " +  '"' + input_fastafastq_file_supports_multiple + '"') else ""} \
      ~{if defined(input_fastafastq_file_supports_multiple_) then ("-2 " +  '"' + input_fastafastq_file_supports_multiple_ + '"') else ""} \
      ~{if defined(read_length_default) then ("-l " +  '"' + read_length_default + '"') else ""} \
      ~{if defined(maximum_mismatches) then ("-m " +  '"' + maximum_mismatches + '"') else ""} \
      ~{if defined(exactly_matching_threshold) then ("-e " +  '"' + exactly_matching_threshold + '"') else ""} \
      ~{if (low_level_polymorphism) then "-L" else ""} \
      ~{if defined(input_file) then ("-i " +  '"' + input_file + '"') else ""} \
      ~{if defined(output_file) then ("-o " +  '"' + output_file + '"') else ""} \
      ~{if defined(kallele_min_variants) then ("-k " +  '"' + kallele_min_variants + '"') else ""} \
      ~{if defined(kallele_divide_regardless) then ("-K " +  '"' + kallele_divide_regardless + '"') else ""} \
      ~{if defined(frequency_min_variant) then ("-f " +  '"' + frequency_min_variant + '"') else ""} \
      ~{if (output_assembly) then "-a" else ""} \
      ~{if defined(maximum_number_divided) then ("-N " +  '"' + maximum_number_divided + '"') else ""} \
      ~{if defined(minimum_number_reads) then ("-r " +  '"' + minimum_number_reads + '"') else ""} \
      ~{if defined(maximum_number_reads) then ("-R " +  '"' + maximum_number_reads + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_fastafastq_file_supports_multiple: "Input fasta/fastq file, supports multiple '-1'"
    input_fastafastq_file_supports_multiple_: "Input fasta/fastq file, supports multiple '-2' [null]"
    read_length_default: "Read length, default: 0 variable"
    maximum_mismatches: "Maximum mismatches [4]"
    exactly_matching_threshold: "Exactly matching threshold [2000]"
    low_level_polymorphism: "Low level of polymorphism"
    input_file: "Input file [stdin]"
    output_file: "Output file [stdout]"
    kallele_min_variants: "K_allele, min variants to create a new group [2]"
    kallele_divide_regardless: "K_allele, divide regardless of frequency when num of variants exceed this value [50]"
    frequency_min_variant: "Frequency, min variant frequency to create a new group [0.2]"
    output_assembly: "output assembly"
    maximum_number_divided: "Maximum number of divided clusters to merge [300]"
    minimum_number_reads: "Minimum number of reads to assemble (valid only when '-a' is opened) [5]"
    maximum_number_reads: "Maximum number of reads to assemble (valid only when '-a' is opened) [300]"
    merge: "Input File Format: <seqid:int>\\t<cluster_id:int>\\t<read1:string>\\t<read2:string>[\\t<pre_cluster_id:int>]"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}