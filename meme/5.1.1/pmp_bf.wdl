version 1.0

task PmpBf {
  input {
    Boolean? hb
    Int? model
    Float? pur_pyr
    Float? transition_transversion
    Float? bg
    Float? fg
    String? motif
    File? b_file
    Float? pseudo_count
    String? ustar
    Boolean? verbosity
    String pmp
    File tree_file
    File meme_file
  }
  command <<<
    pmp_bf \
      ~{pmp} \
      ~{tree_file} \
      ~{meme_file} \
      ~{if (hb) then "--hb" else ""} \
      ~{if defined(model) then ("--model " +  '"' + model + '"') else ""} \
      ~{if defined(pur_pyr) then ("--pur-pyr " +  '"' + pur_pyr + '"') else ""} \
      ~{if defined(transition_transversion) then ("--transition-transversion " +  '"' + transition_transversion + '"') else ""} \
      ~{if defined(bg) then ("--bg " +  '"' + bg + '"') else ""} \
      ~{if defined(fg) then ("--fg " +  '"' + fg + '"') else ""} \
      ~{if defined(motif) then ("--motif " +  '"' + motif + '"') else ""} \
      ~{if defined(b_file) then ("--bfile " +  '"' + b_file + '"') else ""} \
      ~{if defined(pseudo_count) then ("--pseudocount " +  '"' + pseudo_count + '"') else ""} \
      ~{if defined(ustar) then ("--ustar " +  '"' + ustar + '"') else ""} \
      ~{if (verbosity) then "--verbosity" else ""}
  >>>
  parameter_meta {
    hb: ""
    model: "|average|jc|k2|f81|f84|hky|tn (default=f81)"
    pur_pyr: "(default=1.0)"
    transition_transversion: "(default=0.5)"
    bg: "(default=1.0)"
    fg: "(default=1.0)"
    motif: "(default=all)"
    b_file: "(default from motif file)"
    pseudo_count: "(default=0.1)"
    ustar: ""
    verbosity: "[1|2|3|4] (default 2)"
    pmp: ""
    tree_file: ""
    meme_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}