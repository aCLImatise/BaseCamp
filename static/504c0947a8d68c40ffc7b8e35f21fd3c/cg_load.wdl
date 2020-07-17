version 1.0

task CgLoad.2 {
  input {
    Boolean? map_input_directory
    Boolean? output_database_path
    Boolean? asm
    Boolean? load_extra_evidence
    Boolean? schema
    Boolean? refseq_config
    Boolean? refseq_path
    Boolean? ref_file
    Boolean? force
    Boolean? write_reference
    Boolean? write_read
    Boolean? qual_quant
    Boolean? no_spot_group
    Boolean? min_mapq
    Boolean? no_secondary
    Boolean? single_mate
    Boolean? cluster_size
    Boolean? input_no_threads
    Boolean? library
    String? xml_log
    String? log_level
    Boolean? verbose
    Boolean? quiet
    File? option_file
  }
  command <<<
    cg-load.2 \
      ~{true="--map" false="" map_input_directory} \
      ~{true="--output" false="" output_database_path} \
      ~{true="--asm" false="" asm} \
      ~{true="--load-extra-evidence" false="" load_extra_evidence} \
      ~{true="--schema" false="" schema} \
      ~{true="--refseq-config" false="" refseq_config} \
      ~{true="--refseq-path" false="" refseq_path} \
      ~{true="--ref-file" false="" ref_file} \
      ~{true="--force" false="" force} \
      ~{true="--write-reference" false="" write_reference} \
      ~{true="--write-read" false="" write_read} \
      ~{true="--qual-quant" false="" qual_quant} \
      ~{true="--no-spotgroup" false="" no_spot_group} \
      ~{true="--min-mapq" false="" min_mapq} \
      ~{true="--no-secondary" false="" no_secondary} \
      ~{true="--single-mate" false="" single_mate} \
      ~{true="--cluster-size" false="" cluster_size} \
      ~{true="--input-no-threads" false="" input_no_threads} \
      ~{true="--library" false="" library} \
      ~{if defined(xml_log) then ("--xml-log " +  '"' + xml_log + '"') else ""} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--quiet" false="" quiet} \
      ~{if defined(option_file) then ("--option-file " +  '"' + option_file + '"') else ""}
  >>>
  parameter_meta {
    map_input_directory: "MAP input directory path containing files "
    output_database_path: "output database path "
    asm: "ASM input directory path containing files "
    load_extra_evidence: "load extra evidence files "
    schema: "database schema file name "
    refseq_config: "path to file with reference-to-accession  list "
    refseq_path: "path to directory with reference  sequences in fasta "
    ref_file: "path to fasta file with references "
    force: "force output overwrite "
    write_reference: "force reference sequence write "
    write_read: "force reads write "
    qual_quant: "quality scores quantization level, can be  number (0: none, 1: 2bit, 2: 1bit), or  string like '1:10,10:20,20:30,30:-' (which  is equivalent to 1) "
    no_spot_group: "do not write source file key to SPOT_GROUP  column "
    min_mapq: "filter secondary mappings by minimum weight  (phred) "
    no_secondary: "preserve only one mapping per half-DNB  based on weight "
    single_mate: "if secondary mates have duplicates preserve  only one in each pair based on weight "
    cluster_size: "defines cluster window on the reference,  records only placement from given cluster  size; default is zero which means ignore "
    input_no_threads: "disable input files threaded caching "
    library: "copy extra file/directory into output "
    xml_log: "produce XML-formatted log file "
    log_level: "Logging level as number or enum string. One  of (fatal|sys|int|err|warn|info|debug) or  (0-6) Current/default is warn "
    verbose: "Increase the verbosity of the program  status messages. Use multiple times for more  verbosity. Negates quiet. "
    quiet: "Turn off all status messages for the  program. Negated by verbose. "
    option_file: "Read more options and parameters from the  file. "
  }
}