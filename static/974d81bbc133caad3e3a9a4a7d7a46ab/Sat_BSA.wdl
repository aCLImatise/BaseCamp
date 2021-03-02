version 1.0

task SatBSA {
  input {
    String? chromosome_name_selecting
    Int? start_position_selecting
    Int? end_position_selecting
    File? full_path_listing_bam_files
    File? full_path_listing_fastagz_files
    Int? thread_number_default
    File? full_path_canu
    Int? genome_size_mb
    String? read_status_set
    Int? mapping_quality_value
    String? pb_used_sequence
    Int? defining_promoter_size
    Int? threshold_pvalue_fishers
    String? w
    String? required
    String? arguments
  }
  command <<<
    Sat_BSA \
      ~{required} \
      ~{arguments} \
      ~{if defined(chromosome_name_selecting) then ("-c " +  '"' + chromosome_name_selecting + '"') else ""} \
      ~{if defined(start_position_selecting) then ("-s " +  '"' + start_position_selecting + '"') else ""} \
      ~{if defined(end_position_selecting) then ("-e " +  '"' + end_position_selecting + '"') else ""} \
      ~{if defined(full_path_listing_bam_files) then ("-b " +  '"' + full_path_listing_bam_files + '"') else ""} \
      ~{if defined(full_path_listing_fastagz_files) then ("-f " +  '"' + full_path_listing_fastagz_files + '"') else ""} \
      ~{if defined(thread_number_default) then ("-t " +  '"' + thread_number_default + '"') else ""} \
      ~{if defined(full_path_canu) then ("-d " +  '"' + full_path_canu + '"') else ""} \
      ~{if defined(genome_size_mb) then ("-g " +  '"' + genome_size_mb + '"') else ""} \
      ~{if defined(read_status_set) then ("-r " +  '"' + read_status_set + '"') else ""} \
      ~{if defined(mapping_quality_value) then ("-q " +  '"' + mapping_quality_value + '"') else ""} \
      ~{if defined(pb_used_sequence) then ("-i " +  '"' + pb_used_sequence + '"') else ""} \
      ~{if defined(defining_promoter_size) then ("-p " +  '"' + defining_promoter_size + '"') else ""} \
      ~{if defined(threshold_pvalue_fishers) then ("-v " +  '"' + threshold_pvalue_fishers + '"') else ""} \
      ~{if defined(w) then ("-w " +  '"' + w + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/sat-bsa:1.12--0"
  }
  parameter_meta {
    chromosome_name_selecting: ": Chromosome name for selecting the aligned reads."
    start_position_selecting: ": Start position for selecting the aligned reads."
    end_position_selecting: ": End position for selecting the aligned reads."
    full_path_listing_bam_files: ": Full path of bam_list.txt listing bam files (Input format 1)."
    full_path_listing_fastagz_files: ": Full path of fa_list.txt listing fasta.gz files (Input format 2)."
    thread_number_default: ": Thread number. Default=[1]"
    full_path_canu: ": Full path of Canu."
    genome_size_mb: ": Genome size in Mb set in Canu."
    read_status_set: ": Read status set in Canu. Default=[-nanopore-raw]."
    mapping_quality_value: ": The mapping quality value excluded from analysis. Default=[0]"
    pb_used_sequence: "or pb  : The used sequence reads type (Oxford Nanopore Technologies[ont] or PacBio[pb])."
    defining_promoter_size: ": Defining promoter size applied for identifying SVs. Default=[0]"
    threshold_pvalue_fishers: ": Threshold for P-value from Fishers exact test. Default=[0.05]"
    w: ""
    required: ""
    arguments: ""
  }
  output {
    File out_stdout = stdout()
  }
}