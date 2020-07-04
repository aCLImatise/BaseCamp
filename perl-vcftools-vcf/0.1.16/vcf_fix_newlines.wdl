version 1.0

task VcfFixNewlines {
  input {
    Boolean? info
  }
  command <<<
    vcf-fix-newlines \
      ~{true="--info" false="" info}
  >>>
  parameter_meta {
    info: "Report if the file is consistent with the current platform based."
  }
}