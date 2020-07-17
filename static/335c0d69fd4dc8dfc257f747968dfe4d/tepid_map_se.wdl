version 1.0

task TepidMapSe {
  input {
    Boolean? path_bowtie_index
    Boolean? path_yaha_index
    Boolean? number_cores_use
    Boolean? sample_name
    Boolean? fastq_file_containing
    Boolean? recursive_optional
    Boolean? gzip_fastq_files
  }
  command <<<
    tepid-map-se \
      ~{true="-x" false="" path_bowtie_index} \
      ~{true="-y" false="" path_yaha_index} \
      ~{true="-p" false="" number_cores_use} \
      ~{true="-n" false="" sample_name} \
      ~{true="-q" false="" fastq_file_containing} \
      ~{true="-r" false="" recursive_optional} \
      ~{true="-z" false="" gzip_fastq_files}
  >>>
  parameter_meta {
    path_bowtie_index: "path to bowtie2 index"
    path_yaha_index: "path to yaha index"
    number_cores_use: "number of cores to use"
    sample_name: "sample name"
    fastq_file_containing: "fastq file containing reads"
    recursive_optional: "recursive (optional)"
    gzip_fastq_files: "gzip fastq files (optional)"
  }
}