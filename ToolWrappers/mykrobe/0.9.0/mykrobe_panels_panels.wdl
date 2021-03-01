version 1.0

task MykrobePanelsPanels {
  input {
    Boolean? d
    Boolean? q
    String my_k_robe
    String panels
  }
  command <<<
    mykrobe panels panels \
      ~{my_k_robe} \
      ~{panels} \
      ~{if (d) then "-d" else ""} \
      ~{if (q) then "-q" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mykrobe:0.9.0--py36hd181a71_2"
  }
  parameter_meta {
    d: ""
    q: ""
    my_k_robe: ""
    panels: ""
  }
  output {
    File out_stdout = stdout()
  }
}