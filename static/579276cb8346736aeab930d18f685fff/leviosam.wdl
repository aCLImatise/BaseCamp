version 1.0

task Leviosam {
  input {
    File? build_leviosam_index
    String? sample_used_build
    File? prefix_output_file
    File? output_file_format
    Int? haplotype_used_index
    File? path_name_map
    Int? path_length_map
    File? path_be_liftedleave
    File? path_leviosam_index
    Int? number_threads_used
    Int? chunk_size_queries
    Boolean? add_md_nm
    String? fasta_reference_corresponds
    String lift
    String serialize
  }
  command <<<
    leviosam \
      ~{lift} \
      ~{serialize} \
      ~{if defined(build_leviosam_index) then ("-v " +  '"' + build_leviosam_index + '"') else ""} \
      ~{if defined(sample_used_build) then ("-s " +  '"' + sample_used_build + '"') else ""} \
      ~{if defined(prefix_output_file) then ("-p " +  '"' + prefix_output_file + '"') else ""} \
      ~{if defined(output_file_format) then ("-O " +  '"' + output_file_format + '"') else ""} \
      ~{if defined(haplotype_used_index) then ("-g " +  '"' + haplotype_used_index + '"') else ""} \
      ~{if defined(path_name_map) then ("-n " +  '"' + path_name_map + '"') else ""} \
      ~{if defined(path_length_map) then ("-k " +  '"' + path_length_map + '"') else ""} \
      ~{if defined(path_be_liftedleave) then ("-a " +  '"' + path_be_liftedleave + '"') else ""} \
      ~{if defined(path_leviosam_index) then ("-l " +  '"' + path_leviosam_index + '"') else ""} \
      ~{if defined(number_threads_used) then ("-t " +  '"' + number_threads_used + '"') else ""} \
      ~{if defined(chunk_size_queries) then ("-T " +  '"' + chunk_size_queries + '"') else ""} \
      ~{if (add_md_nm) then "-m" else ""} \
      ~{if defined(fasta_reference_corresponds) then ("-f " +  '"' + fasta_reference_corresponds + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/leviosam:3.1.1--hc9558a2_0"
  }
  parameter_meta {
    build_leviosam_index: "Build a leviosam index using a VCF file."
    sample_used_build: "The sample used to build leviosam index (-v needs to be set)."
    prefix_output_file: "The prefix of the output file."
    output_file_format: "Output file format, can be sam or bam. [sam]"
    haplotype_used_index: "/1    The haplotype used to index leviosam. [0]"
    path_name_map: "Path to a name map file.\\nThis can be used to map '1' to 'chr1', or vice versa."
    path_length_map: "Path to a length map file."
    path_be_liftedleave: "Path to the SAM/BAM file to be lifted.\\nLeave empty or set to \\\"-\\\" to read from stdin."
    path_leviosam_index: "Path to a leviosam index."
    number_threads_used: "Number of threads used. [1]"
    chunk_size_queries: "Chunk size for each thread. [256]\\nEach thread queries <-T> reads, lifts, and writes.\\nSetting a higher <-T> uses slightly more memory but might benefit thread scaling."
    add_md_nm: "add MD and NM to output alignment records (requires -f option)"
    fasta_reference_corresponds: "Fasta reference that corresponds to input SAM/BAM (for use w/ -m option)"
    lift: ""
    serialize: ""
  }
  output {
    File out_stdout = stdout()
    File out_prefix_output_file = "${in_prefix_output_file}"
    File out_output_file_format = "${in_output_file_format}"
  }
}