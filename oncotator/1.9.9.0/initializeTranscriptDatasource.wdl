version 1.0

task InitializeTranscriptDatasource {
  input {
    String? name
    String? filter
    String gtf_files
    String fast_a_files
    String output_dir
    String genome_build
    String version
  }
  command <<<
    initializeTranscriptDatasource \
      ~{gtf_files} \
      ~{fast_a_files} \
      ~{output_dir} \
      ~{genome_build} \
      ~{version} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(filter) then ("--filter " +  '"' + filter + '"') else ""}
  >>>
  parameter_meta {
    name: ""
    filter: ""
    gtf_files: "Location of the gtf files.  Multiple files can be specified as a comma separated list (e.g. file1,file2) without spaces "
    fast_a_files: "Location of the fasta file (cDNA) associated with the gtf files.  Multiple files can be specified as a comma separated list (e.g. file1,file2) without spaces"
    output_dir: "Datasource output location.  This directory should NOT already exist."
    genome_build: "Genome build -- this must be specified correctly by the user.  For example, hg19."
    version: "version.  For example, v18"
  }
}