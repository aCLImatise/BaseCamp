version 1.0

task Bam2msa {
  input {
    String rR
    String? inputInput
    String? outputOutput
  }
  command <<<
    bam2msa \
      ~{inputInput} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{outputOutput}
  >>>
}