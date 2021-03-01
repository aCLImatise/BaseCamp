version 1.0

task Tee {
  input {
    Boolean? append
    Boolean? ignore_interrupts
    Boolean? diagnose_errors_writing
    Boolean? output_error
  }
  command <<<
    tee \
      ~{if (append) then "--append" else ""} \
      ~{if (ignore_interrupts) then "--ignore-interrupts" else ""} \
      ~{if (diagnose_errors_writing) then "-p" else ""} \
      ~{if (output_error) then "--output-error" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    append: "append to the given FILEs, do not overwrite"
    ignore_interrupts: "ignore interrupt signals"
    diagnose_errors_writing: "diagnose errors writing to non pipes"
    output_error: "[=MODE]   set behavior on write error.  See MODE below"
  }
  output {
    File out_stdout = stdout()
  }
}