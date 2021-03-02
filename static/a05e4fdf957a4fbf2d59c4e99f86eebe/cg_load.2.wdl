version 1.0

task Cgload2 {
  input {
    Boolean? map_input_directory
    File? output_database_path
    Boolean? asm
    Boolean? load_extra_evidence
    Boolean? schema
    Boolean? refseq_config
    Boolean? ref_file
    Boolean? force
    Boolean? write_reference
    Boolean? write_read
    Boolean? qual_quant
    Boolean? no_spot_group
    Boolean? no_secondary
    Boolean? single_mate
    Boolean? cluster_size
    Boolean? input_no_threads
    File? library
    File? xml_log
    Boolean? verbose
    Boolean? quiet
    File? option_file
    String list
    String column
    String quit_dot
    File file_dot
  }
  command <<<
    cg_load_2 \
      ~{list} \
      ~{column} \
      ~{quit_dot} \
      ~{file_dot} \
      ~{if (map_input_directory) then "--map" else ""} \
      ~{if (output_database_path) then "--output" else ""} \
      ~{if (asm) then "--asm" else ""} \
      ~{if (load_extra_evidence) then "--load-extra-evidence" else ""} \
      ~{if (schema) then "--schema" else ""} \
      ~{if (refseq_config) then "--refseq-config" else ""} \
      ~{if (ref_file) then "--ref-file" else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (write_reference) then "--write-reference" else ""} \
      ~{if (write_read) then "--write-read" else ""} \
      ~{if (qual_quant) then "--qual-quant" else ""} \
      ~{if (no_spot_group) then "--no-spotgroup" else ""} \
      ~{if (no_secondary) then "--no-secondary" else ""} \
      ~{if (single_mate) then "--single-mate" else ""} \
      ~{if (cluster_size) then "--cluster-size" else ""} \
      ~{if (input_no_threads) then "--input-no-threads" else ""} \
      ~{if (library) then "--library" else ""} \
      ~{if defined(xml_log) then ("--xml-log " +  '"' + xml_log + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(option_file) then ("--option-file " +  '"' + option_file + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/sra-tools:2.10.9--pl526haddd2b5_0"
  }
  parameter_meta {
    map_input_directory: "MAP input directory path containing files"
    output_database_path: "output database path"
    asm: "ASM input directory path containing files"
    load_extra_evidence: "load extra evidence files"
    schema: "database schema file name"
    refseq_config: "path to file with reference-to-accession"
    ref_file: "path to fasta file with references"
    force: "force output overwrite"
    write_reference: "force reference sequence write"
    write_read: "force reads write"
    qual_quant: "quality scores quantization level, can be\\nnumber (0: none, 1: 2bit, 2: 1bit), or\\nstring like '1:10,10:20,20:30,30:-' (which\\nis equivalent to 1)"
    no_spot_group: "do not write source file key to SPOT_GROUP"
    no_secondary: "preserve only one mapping per half-DNB\\nbased on weight"
    single_mate: "if secondary mates have duplicates preserve\\nonly one in each pair based on weight"
    cluster_size: "defines cluster window on the reference,\\nrecords only placement from given cluster\\nsize; default is zero which means ignore"
    input_no_threads: "disable input files threaded caching"
    library: "copy extra file/directory into output"
    xml_log: "produce XML-formatted log file"
    verbose: "Increase the verbosity of the program\\nstatus messages. Use multiple times for more\\nverbosity. Negates quiet."
    quiet: "Turn off all status messages for the\\nprogram. Negated by verbose."
    option_file: "Read more options and parameters from the"
    list: "-i|--refseq-path                 path to directory with reference "
    column: "-q|--min-mapq                    filter secondary mappings by minimum weight "
    quit_dot: "-L|--log-level <level>           Logging level as number or enum string. One "
    file_dot: "cg-load.2 : 2.10.9"
  }
  output {
    File out_stdout = stdout()
    File out_output_database_path = "${in_output_database_path}"
    File out_library = "${in_library}"
  }
}