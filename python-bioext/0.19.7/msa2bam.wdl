version 1.0

task Msa2bam {
  input {
    String rR
    String? inputInput
    String? outputOutput
  }
  command <<<
    msa2bam \
      ~{inputInput} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{outputOutput}
  >>>
}