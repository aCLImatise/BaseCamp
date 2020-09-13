version 1.0

task Ntthal {
  input {
    Int? mv
    Int? dv
    Boolean? dntpconc_concentration_mm
    Boolean? concentration_dna_nm
    Boolean? mode_alignment_type
    Boolean? temp_temperature_calculated
    Boolean? causes_alignment_displayed
    Int? max_loop
    File? path
    Int? s_one
    Int? s_two
    String oligo
  }
  command <<<
    ntthal \
      ~{oligo} \
      ~{if defined(mv) then ("-mv " +  '"' + mv + '"') else ""} \
      ~{if defined(dv) then ("-dv " +  '"' + dv + '"') else ""} \
      ~{if (dntpconc_concentration_mm) then "-n" else ""} \
      ~{if (concentration_dna_nm) then "-d" else ""} \
      ~{if (mode_alignment_type) then "-a" else ""} \
      ~{if (temp_temperature_calculated) then "-t" else ""} \
      ~{if (causes_alignment_displayed) then "-r" else ""} \
      ~{if defined(max_loop) then ("-maxloop " +  '"' + max_loop + '"') else ""} \
      ~{if defined(path) then ("-path " +  '"' + path + '"') else ""} \
      ~{if defined(s_one) then ("-s1 " +  '"' + s_one + '"') else ""} \
      ~{if defined(s_two) then ("-s2 " +  '"' + s_two + '"') else ""}
  >>>
  parameter_meta {
    mv: "- concentration of monovalent cations in mM, by default 50 mM"
    dv: "- concentration of divalent cations in mM, by default 0 mM"
    dntpconc_concentration_mm: "dNTP_conc        - concentration of deoxynycleotide triphosphate in mM, by default 0 mM"
    concentration_dna_nm: "dna_conc         - concentration of DNA strands in nM, by default 50 nM"
    mode_alignment_type: "mode             - alignment type, END1, END2, ANY and HAIRPIN, by default ANY (when duplex)"
    temp_temperature_calculated: "temp             - temperature at which duplex is calculated, by default 37C"
    causes_alignment_displayed: "- causes the alignment NOT to be displayed on stderr, _only_ Tm is printed"
    max_loop: "- the maximum size of secondary structures loops.\\nDefault is 30 (this is maximum allowed length, currently)."
    path: "- the path to the thermodynamic parameter files"
    s_one: ""
    s_two: ""
    oligo: ""
  }
  output {
    File out_stdout = stdout()
  }
}