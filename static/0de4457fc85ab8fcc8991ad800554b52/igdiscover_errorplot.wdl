version 1.0

task IgdiscoverErrorplot {
  input {
    Int? minimum_group_size
    Int? max_j_shm
    File? multi
    String? boxplot
  }
  command <<<
    igdiscover errorplot \
      ~{if defined(minimum_group_size) then ("--minimum-group-size " +  '"' + minimum_group_size + '"') else ""} \
      ~{if defined(max_j_shm) then ("--max-j-shm " +  '"' + max_j_shm + '"') else ""} \
      ~{if defined(multi) then ("--multi " +  '"' + multi + '"') else ""} \
      ~{if defined(boxplot) then ("--boxplot " +  '"' + boxplot + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    minimum_group_size: "Plot only genes with at least N assigned sequences.\\nDefault: 0.1% of assigned sequences or 100, whichever\\nis smaller."
    max_j_shm: "Use only rows with J%SHM >= VALUE"
    multi: "Plot individual error frequency histograms (for each V\\ngene) to this PDF file"
    boxplot: "Plot a single page with box(en)plots of V SHM for\\nmultiple genes\\n"
  }
  output {
    File out_stdout = stdout()
  }
}