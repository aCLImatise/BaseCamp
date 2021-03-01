version 1.0

task PmpBf {
  input {
    Int? model
    Float? pur_pyr
    Float? transition_transversion
    Float? bg
    Float? fg
    String? motif
    File? b_file
    Float? pseudo_count
    String pmp
    File tree_file
    File meme_file
  }
  command <<<
    pmp_bf \
      ~{pmp} \
      ~{tree_file} \
      ~{meme_file} \
      ~{if defined(model) then ("--model " +  '"' + model + '"') else ""} \
      ~{if defined(pur_pyr) then ("--pur-pyr " +  '"' + pur_pyr + '"') else ""} \
      ~{if defined(transition_transversion) then ("--transition-transversion " +  '"' + transition_transversion + '"') else ""} \
      ~{if defined(bg) then ("--bg " +  '"' + bg + '"') else ""} \
      ~{if defined(fg) then ("--fg " +  '"' + fg + '"') else ""} \
      ~{if defined(motif) then ("--motif " +  '"' + motif + '"') else ""} \
      ~{if defined(b_file) then ("--bfile " +  '"' + b_file + '"') else ""} \
      ~{if defined(pseudo_count) then ("--pseudocount " +  '"' + pseudo_count + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0"
  }
  parameter_meta {
    model: "|average|jc|k2|f81|f84|hky|tn (default=f81)"
    pur_pyr: "(default=1.0)"
    transition_transversion: "(default=0.5)"
    bg: "(default=1.0)"
    fg: "(default=1.0)"
    motif: "(default=all)"
    b_file: "(default from motif file)"
    pseudo_count: "(default=0.1)"
    pmp: ""
    tree_file: ""
    meme_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}