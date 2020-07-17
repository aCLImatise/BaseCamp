version 1.0

task SinglemPipe {
  input {
    String? threads
    Boolean? output_extras
    String? assignment_method
  }
  command <<<
    singlem pipe \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{true="--output_extras" false="" output_extras} \
      ~{if defined(assignment_method) then ("--assignment_method " +  '"' + assignment_method + '"') else ""}
  >>>
  parameter_meta {
    threads: "Use N threads."
    output_extras: "Output more detailed information in the OTU table."
    assignment_method: "Specify taxonomic assignment method [default: pplacer]."
  }
}