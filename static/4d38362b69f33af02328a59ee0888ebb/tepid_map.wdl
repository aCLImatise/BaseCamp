version 1.0

task Tepidmap {
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
    tepid_map \
      ~{if (path_bowtie_index) then "-x" else ""} \
      ~{if (path_yaha_index) then "-y" else ""} \
      ~{if (number_cores_use) then "-p" else ""} \
      ~{if (average_insert_size) then "-s" else ""} \
      ~{if (sample_name) then "-n" else ""} \
      ~{if (one) then "-1" else ""} \
      ~{if (two) then "-2" else ""} \
      ~{if (recursive_optional) then "-r" else ""} \
      ~{if (gzip_fastq_files) then "-z" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/tepid:0.10--py_0"
  }
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
  output {
    File out_stdout = stdout()
  }
}