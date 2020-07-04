version 1.0

task VcfValidator {
  input {
    Boolean? duplicates
    Boolean? unique_messages
    File file_dot_vcf_do_tgz
  }
  command <<<
    vcf-validator \
      ~{file_dot_vcf_do_tgz} \
      ~{true="--duplicates" false="" duplicates} \
      ~{true="--unique-messages" false="" unique_messages}
  >>>
  parameter_meta {
    duplicates: "Warn about duplicate positions."
    unique_messages: "Output all messages only once."
    file_dot_vcf_do_tgz: ""
  }
}