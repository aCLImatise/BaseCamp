version 1.0

task VerifyBamID {
  input {
    Boolean? vcf
  }
  command <<<
    verifyBamID \
      ~{if (vcf) then "--vcf" else ""}
  >>>
  parameter_meta {
    vcf: "[vcf file] required"
  }
  output {
    File out_stdout = stdout()
  }
}