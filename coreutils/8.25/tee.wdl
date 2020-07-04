version 1.0

task Tee {
  input {
    String? append
    String? ignore_interrupts
    Boolean? diagnose_errors_writing
    Boolean? output_error
    String? option
  }
  command <<<
    tee \
      ~{option} \
      ~{if defined(append) then ("--append " +  '"' + append + '"') else ""} \
      ~{if defined(ignore_interrupts) then ("--ignore-interrupts " +  '"' + ignore_interrupts + '"') else ""} \
      ~{true="-p" false="" diagnose_errors_writing} \
      ~{true="--output-error" false="" output_error}
  >>>
  parameter_meta {
    append: "to the given FILEs, do not overwrite"
    ignore_interrupts: "interrupt signals"
    diagnose_errors_writing: "diagnose errors writing to non pipes"
    output_error: "[=MODE]   set behavior on write error.  See MODE below"
    option: ""
  }
}