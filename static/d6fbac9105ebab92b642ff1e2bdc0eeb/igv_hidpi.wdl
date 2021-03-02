version 1.0

task IgvHidpi {
  input {
    Boolean? preferences
    Boolean? batch_dot
    Boolean? port
    Boolean? genome
    Boolean? data_server_url
    Boolean? genome_server_url
    Boolean? index_file
    Boolean? coverage_file
    Boolean? name
    Boolean? locus
    String? header
    File? igv_directory
  }
  command <<<
    igv_hidpi \
      ~{if (preferences) then "--preferences" else ""} \
      ~{if (batch_dot) then "--batch." else ""} \
      ~{if (port) then "--port" else ""} \
      ~{if (genome) then "--genome" else ""} \
      ~{if (data_server_url) then "--dataServerURL" else ""} \
      ~{if (genome_server_url) then "--genomeServerURL" else ""} \
      ~{if (index_file) then "--indexFile" else ""} \
      ~{if (coverage_file) then "--coverageFile" else ""} \
      ~{if (name) then "--name" else ""} \
      ~{if (locus) then "--locus" else ""} \
      ~{if defined(header) then ("--header " +  '"' + header + '"') else ""} \
      ~{if defined(igv_directory) then ("--igvDirectory " +  '"' + igv_directory + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/igv:2.9.2--0"
  }
  parameter_meta {
    preferences: "Path or URL to a preference property file"
    batch_dot: "Path or url to a batch command file"
    port: "IGV command port number (defaults to 60151)"
    genome: "Genome ID (e.g hg19) or path or url to .genome or indexed fasta file"
    data_server_url: "Path or url to a data server registry file"
    genome_server_url: "Path or url to a genome server registry file"
    index_file: "Index file or comma delimited list of index files corresponding to data files"
    coverage_file: "Coverage file or comma delimited list of coverage files corresponding to data files"
    name: "Name or comma-delimited list of names for tracks corresponding to data files"
    locus: "Initial locus"
    header: "header to include with all requests for list of data files"
    igv_directory: "to the local igv directory.  Defaults to <user home>/igv"
  }
  output {
    File out_stdout = stdout()
  }
}