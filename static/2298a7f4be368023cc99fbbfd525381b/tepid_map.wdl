version 1.0

task TepidMap {
  input {
    Boolean? path_bowtie_index
    Boolean? path_yaha_index
    Boolean? number_cores_use
    Boolean? average_insert_size
    Boolean? sample_name
    Boolean? one
    Boolean? two
    Boolean? recursive_optional
    Boolean? gzip_fastq_files
  }
  command <<<
    tepid-map \
      ~{true="-x" false="" path_bowtie_index} \
      ~{true="-y" false="" path_yaha_index} \
      ~{true="-p" false="" number_cores_use} \
      ~{true="-s" false="" average_insert_size} \
      ~{true="-n" false="" sample_name} \
      ~{true="-1" false="" one} \
      ~{true="-2" false="" two} \
      ~{true="-r" false="" recursive_optional} \
      ~{true="-z" false="" gzip_fastq_files}
  >>>
  parameter_meta {
    path_bowtie_index: "path to bowtie2 index"
    path_yaha_index: "path to yaha index"
    number_cores_use: "number of cores to use"
    average_insert_size: "average insert size"
    sample_name: "sample name"
    one: "fastq file with #1 mates"
    two: "fastq file with #2 mates"
    recursive_optional: "recursive (optional)"
    gzip_fastq_files: "gzip fastq files (optional)"
  }
}