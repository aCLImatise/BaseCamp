version 1.0

task Tepidmapse {
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
    tepid_map_se \
      ~{if (path_bowtie_index) then "-x" else ""} \
      ~{if (path_yaha_index) then "-y" else ""} \
      ~{if (number_cores_use) then "-p" else ""} \
      ~{if (sample_name) then "-n" else ""} \
      ~{if (fastq_file_containing) then "-q" else ""} \
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
    sample_name: "sample name"
    fastq_file_containing: "fastq file containing reads"
    recursive_optional: "recursive (optional)"
    gzip_fastq_files: "gzip fastq files (optional)"
  }
  output {
    File out_stdout = stdout()
  }
}