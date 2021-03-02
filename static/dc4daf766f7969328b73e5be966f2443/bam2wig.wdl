version 1.0

task Bam2wig {
  input {
    Boolean? allows_specify_region
    Boolean? string_provided_track
  }
  command <<<
    bam2wig \
      ~{if (allows_specify_region) then "-r" else ""} \
      ~{if (string_provided_track) then "-t" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    allows_specify_region: "Allows to specify a target region, e.g. 'chr3L:10-250'\\nThis option can only be used if an index file exists\\nSee: samtools index"
    string_provided_track: "A string might be provided as track name"
  }
  output {
    File out_stdout = stdout()
  }
}