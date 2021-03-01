version 1.0

task Breakdancermax {
  input {
    String? operate_single_chromosome
    Int? minimum_length_region
    Int? cutoff_unit_standard
    Int? maximum_sv_size
    Int? minimum_alternative_mapping
    Int? minimum_number_read
    Int? maximum_threshold_ignored
    Int? buffer_size_building
    Boolean? only_detect_rearrangement
    String? prefix_reads_saved
    String? dump_svs_reads
    Boolean? analyze_insert_library
    Boolean? print_copy_number
    Int? output_score_filter
    String analysis_dot_config
  }
  command <<<
    breakdancer_max \
      ~{analysis_dot_config} \
      ~{if defined(operate_single_chromosome) then ("-o " +  '"' + operate_single_chromosome + '"') else ""} \
      ~{if defined(minimum_length_region) then ("-s " +  '"' + minimum_length_region + '"') else ""} \
      ~{if defined(cutoff_unit_standard) then ("-c " +  '"' + cutoff_unit_standard + '"') else ""} \
      ~{if defined(maximum_sv_size) then ("-m " +  '"' + maximum_sv_size + '"') else ""} \
      ~{if defined(minimum_alternative_mapping) then ("-q " +  '"' + minimum_alternative_mapping + '"') else ""} \
      ~{if defined(minimum_number_read) then ("-r " +  '"' + minimum_number_read + '"') else ""} \
      ~{if defined(maximum_threshold_ignored) then ("-x " +  '"' + maximum_threshold_ignored + '"') else ""} \
      ~{if defined(buffer_size_building) then ("-b " +  '"' + buffer_size_building + '"') else ""} \
      ~{if (only_detect_rearrangement) then "-t" else ""} \
      ~{if defined(prefix_reads_saved) then ("-d " +  '"' + prefix_reads_saved + '"') else ""} \
      ~{if defined(dump_svs_reads) then ("-g " +  '"' + dump_svs_reads + '"') else ""} \
      ~{if (analyze_insert_library) then "-l" else ""} \
      ~{if (print_copy_number) then "-a" else ""} \
      ~{if defined(output_score_filter) then ("-y " +  '"' + output_score_filter + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    operate_single_chromosome: "operate on a single chromosome [all chromosome]"
    minimum_length_region: "minimum length of a region [7]"
    cutoff_unit_standard: "cutoff in unit of standard deviation [3]"
    maximum_sv_size: "maximum SV size [1000000000]"
    minimum_alternative_mapping: "minimum alternative mapping quality [35]"
    minimum_number_read: "minimum number of read pairs required to establish a connection [2]"
    maximum_threshold_ignored: "maximum threshold of haploid sequence coverage for regions to be ignored [1000]"
    buffer_size_building: "buffer size for building connection [100]"
    only_detect_rearrangement: "only detect transchromosomal rearrangement, by default off"
    prefix_reads_saved: "prefix of fastq files that SV supporting reads will be saved by library"
    dump_svs_reads: "dump SVs and supporting reads in BED format for GBrowse"
    analyze_insert_library: "analyze Illumina long insert (mate-pair) library"
    print_copy_number: "print out copy number and support reads per library rather than per bam, by default off"
    output_score_filter: "output score filter [30]"
    analysis_dot_config: ""
  }
  output {
    File out_stdout = stdout()
  }
}