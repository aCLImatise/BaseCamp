version 1.0

task Bamtofastqpy {
  input {
    String? read_group
    Boolean? rename
    Boolean? is_sam
    File? header
    String bam
  }
  command <<<
    bamtofastq_py \
      ~{bam} \
      ~{if defined(read_group) then ("--readgroup " +  '"' + read_group + '"') else ""} \
      ~{if (rename) then "--rename" else ""} \
      ~{if (is_sam) then "--is_sam" else ""} \
      ~{if defined(header) then ("--header " +  '"' + header + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bamkit:16.07.26--py_0"
  }
  parameter_meta {
    read_group: "Read group(s) to extract (comma separated)"
    rename: "Rename reads"
    is_sam: "Input is SAM format"
    header: "Write BAM header to file\\n"
    bam: "Input BAM file(s). If absent then defaults to stdin."
  }
  output {
    File out_stdout = stdout()
  }
}