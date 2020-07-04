version 1.0

task BamQC.py {
  input {
    String? bam_file_in
    Int? max_length
  }
  command <<<
    bamQC.py \
      ~{if defined(bam_file_in) then ("--bam-file-in " +  '"' + bam_file_in + '"') else ""} \
      ~{if defined(max_length) then ("--max-length " +  '"' + max_length + '"') else ""}
  >>>
  parameter_meta {
    bam_file_in: "Input BAM file (default: None)"
    max_length: "max frag length to consider (default: 1000)"
  }
}