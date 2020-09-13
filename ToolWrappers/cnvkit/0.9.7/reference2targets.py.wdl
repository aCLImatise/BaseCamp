version 1.0

task Reference2targetspy {
  input {
    String? output_base_name
    String reference
  }
  command <<<
    reference2targets_py \
      ~{reference} \
      ~{if defined(output_base_name) then ("--output " +  '"' + output_base_name + '"') else ""}
  >>>
  parameter_meta {
    output_base_name: "Output base name (extensions added automatically).\\n"
    reference: "Reference file."
  }
  output {
    File out_stdout = stdout()
  }
}