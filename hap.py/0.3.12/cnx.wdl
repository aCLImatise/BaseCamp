version 1.0

task Cnx.py {
  input {
    String outputOutput
    String bamBam
    String? inputInput
  }
  command <<<
    cnx.py \
      ~{inputInput} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(bamBam) then ("--bam " +  '"' + bamBam + '"') else ""}
  >>>
}