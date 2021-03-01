version 1.0

task Ntthal {
  input {
    Int? mv
    Int? dv
    Boolean? dntpconc_concentration_mm
    Boolean? dnaconc_concentration_nm
    Boolean? mode_type_end
    Boolean? temp_temperature_calculated
    Boolean? causes_alignment_displayed
    Int? max_loop
    File? path
    String oligo
  }
  command <<<
    ntthal \
      ~{oligo} \
      ~{if defined(mv) then ("-mv " +  '"' + mv + '"') else ""} \
      ~{if defined(dv) then ("-dv " +  '"' + dv + '"') else ""} \
      ~{if (dntpconc_concentration_mm) then "-n" else ""} \
      ~{if (dnaconc_concentration_nm) then "-d" else ""} \
      ~{if (mode_type_end) then "-a" else ""} \
      ~{if (temp_temperature_calculated) then "-t" else ""} \
      ~{if (causes_alignment_displayed) then "-r" else ""} \
      ~{if defined(max_loop) then ("-maxloop " +  '"' + max_loop + '"') else ""} \
      ~{if defined(path) then ("-path " +  '"' + path + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    mv: "- concentration of monovalent cations in mM, by default 50 mM"
    dv: "- concentration of divalent cations in mM, by default 0 mM"
    dntpconc_concentration_mm: "dNTP_conc        - concentration of deoxynycleotide triphosphate in mM, by default 0 mM"
    dnaconc_concentration_nm: "dna_conc         - concentration of DNA strands in nM, by default 50 nM"
    mode_type_end: "mode             - alignment type, END1, END2, ANY and HAIRPIN, by default ANY (when duplex)"
    temp_temperature_calculated: "temp             - temperature at which duplex is calculated, by default 37C"
    causes_alignment_displayed: "- causes the alignment NOT to be displayed on stderr, _only_ Tm is printed"
    max_loop: "- the maximum size of secondary structures loops.\\nDefault is 30 (this is maximum allowed length, currently)."
    path: "- the path to the thermodynamic parameter files"
    oligo: ""
  }
  output {
    File out_stdout = stdout()
  }
}