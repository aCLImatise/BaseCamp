version 1.0

task GxFastqGroomer {
  input {
    Boolean? fix_id
    Boolean? no_fix_id
  }
  command <<<
    gx-fastq-groomer \
      ~{true="--fix-id" false="" fix_id} \
      ~{true="--no-fix-id" false="" no_fix_id}
  >>>
  parameter_meta {
    fix_id: "fix inconsistent identifiers"
    no_fix_id: "do not fix inconsistent identifiers"
  }
}