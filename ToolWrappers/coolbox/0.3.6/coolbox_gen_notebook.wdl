version 1.0

task CoolboxGenNotebook {
  input {
    Boolean? notes
    Boolean? fig_save
  }
  command <<<
    coolbox gen_notebook \
      ~{if (notes) then "--notes" else ""} \
      ~{if (fig_save) then "--figsave" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/coolbox:0.3.6--py_0"
  }
  parameter_meta {
    notes: "=[4mNOTES[0m\\nDefault: True\\nGenerate markdown notes in notebook or not."
    fig_save: "=[4mFIGSAVE[0m\\nDefault: True\\nGenerate codes for saving figure or not."
  }
  output {
    File out_stdout = stdout()
  }
}