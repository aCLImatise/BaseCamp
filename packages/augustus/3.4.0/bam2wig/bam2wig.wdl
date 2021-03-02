version 1.0

task Bam2wig {
  input {
    Boolean? allows_user_specify
    Boolean? string_provided_track
  }
  command <<<
    bam2wig \
      ~{if (allows_user_specify) then "-r" else ""} \
      ~{if (string_provided_track) then "-t" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/augustus:3.4.0--pl526h0faeac2_0"
  }
  parameter_meta {
    allows_user_specify: "Allows user to specify a target region, e.g. 'chr3L:10-250'\\nThis option can only be used if an index file exists\\nSee: samtools index"
    string_provided_track: "A string might be provided as track name"
  }
  output {
    File out_stdout = stdout()
  }
}