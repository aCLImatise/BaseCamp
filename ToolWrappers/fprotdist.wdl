version 1.0

task Fprotdist {
  input {
    Boolean? n_categories
    Boolean? weights
    Boolean? method
    Boolean? print_data
    String alignments
    File file
  }
  command <<<
    fprotdist \
      ~{alignments} \
      ~{file} \
      ~{if (n_categories) then "-ncategories" else ""} \
      ~{if (weights) then "-weights" else ""} \
      ~{if (method) then "-method" else ""} \
      ~{if (print_data) then "-printdata" else ""}
  >>>
  parameter_meta {
    n_categories: "integer    [1] Number of substitution rate categories\\n(Integer from 1 to 9)"
    weights: "properties Weights file"
    method: "menu       [j] Choose the method to use (Values: j\\n(Jones-Taylor-Thornton matrix); h\\n(Henikoff/Tiller PMB matrix); d (Dayhoff PAM\\nmatrix); k (Kimura formula); s (Similarity\\ntable); c (Categories model))"
    print_data: "boolean    [N] Print data at start of run"
    alignments: "[-outfile]           outfile    [*.fprotdist] Phylip distance matrix output"
    file: "Additional (Optional) qualifiers (* if not always prompted):"
  }
  output {
    File out_stdout = stdout()
  }
}