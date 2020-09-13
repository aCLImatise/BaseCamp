version 1.0

task Bam2wig {
  input {
    Boolean? allows_specify_eg
    Boolean? string_might_provided
  }
  command <<<
    bam2wig \
      ~{if (allows_specify_eg) then "-r" else ""} \
      ~{if (string_might_provided) then "-t" else ""}
  >>>
  parameter_meta {
    allows_specify_eg: "Allows to specify a target region, e.g. 'chr3L:10-250'\\nThis option can only be used if an index file exists\\nSee: samtools index"
    string_might_provided: "A string might be provided as track name"
  }
  output {
    File out_stdout = stdout()
  }
}