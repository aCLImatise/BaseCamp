version 1.0

task Mcxdeblast {
  input {
    Boolean? m_nine
    Int? line_mode
    Int? score
    String? sort
    File? tab
    File? xi_dat
    String? xo_dat
    String? b_cut
    String? e_cut
    String? r_cut
    File? out
    String based_oth_dr
    String based_ot_raw
    String based_ot_map
    String based_ot_tab
    String base_do_terr
  }
  command <<<
    mcxdeblast \
      ~{based_oth_dr} \
      ~{based_ot_raw} \
      ~{based_ot_map} \
      ~{based_ot_tab} \
      ~{base_do_terr} \
      ~{if (m_nine) then "--m9" else ""} \
      ~{if defined(line_mode) then ("--line-mode " +  '"' + line_mode + '"') else ""} \
      ~{if defined(score) then ("--score " +  '"' + score + '"') else ""} \
      ~{if defined(sort) then ("--sort " +  '"' + sort + '"') else ""} \
      ~{if defined(tab) then ("--tab " +  '"' + tab + '"') else ""} \
      ~{if defined(xi_dat) then ("--xi-dat " +  '"' + xi_dat + '"') else ""} \
      ~{if defined(xo_dat) then ("--xo-dat " +  '"' + xo_dat + '"') else ""} \
      ~{if defined(b_cut) then ("--bcut " +  '"' + b_cut + '"') else ""} \
      ~{if defined(e_cut) then ("--ecut " +  '"' + e_cut + '"') else ""} \
      ~{if defined(r_cut) then ("--rcut " +  '"' + r_cut + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    m_nine: "Expect column (-m 9) input."
    line_mode: "Output simple ID1 ID2 SCORE format."
    score: "Use bit scores, E-values,\\nor bit scores normalized by hsp-length"
    sort: "Use alphabetic sorting (default) or occurrence."
    tab: "Use user-supplied tab file."
    xi_dat: "Strip <suf> from file-name to create output base name."
    xo_dat: "Add <suf> to base name."
    b_cut: "Ignore hits below bit score <val>"
    e_cut: "Ignore hits below E-value <val>"
    r_cut: "Ignore hits below raw value <val>"
    out: "Output file name ('-' for STDOUT)"
    based_oth_dr: "[to be read by mcxassemble]"
    based_ot_raw: "[to be read by mcxassemble]"
    based_ot_map: "[to be read by mcxassemble]"
    based_ot_tab: "[to be read by clmformat]"
    base_do_terr: "[error log]"
  }
  output {
    File out_stdout = stdout()
    File out_xi_dat = "${in_xi_dat}"
    File out_out = "${in_out}"
  }
}