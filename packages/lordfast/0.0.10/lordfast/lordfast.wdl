version 1.0

task Lordfast {
  input {
    String ddeessccrriippttiioonn
    String sensitive_tool_mapping
    String sequencing
    File path
    String use
    String ignore
  }
  command <<<
    lordfast \
      ~{ddeessccrriippttiioonn} \
      ~{sensitive_tool_mapping} \
      ~{sequencing} \
      ~{path} \
      ~{use} \
      ~{ignore}
  >>>
  parameter_meta {
    ddeessccrriippttiioonn: "DDEESSCCRRIIPPTTIIOONN"
    sensitive_tool_mapping: "is  a  sensitive  tool for mapping long reads with high error"
    sequencing: "technology  but  provides  the  user  the ability to change"
    path: "to the reference genome file in FASTA format which is sup-"
    use: "_I_N_T  number  of  CPU cores. Pass 0 to use all the available"
    ignore: "anchoring  positions  with more than _I_N_T reference hits."
  }
  output {
    File out_stdout = stdout()
  }
}