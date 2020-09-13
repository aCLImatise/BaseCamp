version 1.0

task Bam2msa {
  input {
    String? region
  }
  command <<<
    bam2msa \
      ~{if defined(region) then ("--region " +  '"' + region + '"') else ""}
  >>>
  parameter_meta {
    region: "only include sequences in a certain REGION\\n"
  }
  output {
    File out_stdout = stdout()
  }
}