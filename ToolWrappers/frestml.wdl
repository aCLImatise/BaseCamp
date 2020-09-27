version 1.0

task Frestml {
  input {
    Boolean? weights
    Boolean? n_jumble
    Boolean? out_gr_no
    Boolean? site_length
    Boolean? print_data
    File file
  }
  command <<<
    frestml \
      ~{file} \
      ~{if (weights) then "-weights" else ""} \
      ~{if (n_jumble) then "-njumble" else ""} \
      ~{if (out_gr_no) then "-outgrno" else ""} \
      ~{if (site_length) then "-sitelength" else ""} \
      ~{if (print_data) then "-printdata" else ""}
  >>>
  parameter_meta {
    weights: "properties Weights file"
    n_jumble: "integer    [0] Number of times to randomise (Integer 0\\nor more)"
    out_gr_no: "integer    [0] Species number to use as outgroup\\n(Integer 0 or more)"
    site_length: "integer    [6] Site length (Integer from 1 to 8)"
    print_data: "boolean    [N] Print data at start of run"
    file: "Additional (Optional) qualifiers (* if not always prompted):"
  }
  output {
    File out_stdout = stdout()
  }
}