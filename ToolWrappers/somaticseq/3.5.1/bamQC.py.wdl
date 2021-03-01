version 1.0

task BamQCpy {
  input {
    File? bam_file_in
    Int? max_length
  }
  command <<<
    bamQC_py \
      ~{if defined(bam_file_in) then ("--bam-file-in " +  '"' + bam_file_in + '"') else ""} \
      ~{if defined(max_length) then ("--max-length " +  '"' + max_length + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    bam_file_in: "Input BAM file (default: None)"
    max_length: "max frag length to consider (default: 1000)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}