version 1.0

task Oligotm {
  input {
    Int? mv
    Float? dv
    Boolean? dntpconc_concentration_deoxynycleotide
    Boolean? dnaconc_concentration_dna
    Boolean? tp
    Boolean? sc
    String oligo
  }
  command <<<
    oligotm \
      ~{oligo} \
      ~{if defined(mv) then ("-mv " +  '"' + mv + '"') else ""} \
      ~{if defined(dv) then ("-dv " +  '"' + dv + '"') else ""} \
      ~{if (dntpconc_concentration_deoxynycleotide) then "-n" else ""} \
      ~{if (dnaconc_concentration_dna) then "-d" else ""} \
      ~{if (tp) then "-tp" else ""} \
      ~{if (sc) then "-sc" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    mv: "- concentration of monovalent cations in mM, by default 50mM"
    dv: "- concentration of divalent cations in mM, by default 1.5mM"
    dntpconc_concentration_deoxynycleotide: "dNTP_conc       - concentration of deoxynycleotide triphosphate in mM, by default 0.6mM"
    dnaconc_concentration_dna: "dna_conc        - concentration of DNA strands in nM, by default 50nM"
    tp: "[0|1]     - Specifies the table of thermodynamic parameters and\\nthe method of melting temperature calculation:\\n0  Breslauer et al., 1986 and Rychlik et al., 1990\\n(used by primer3 up to and including release 1.1.0).\\n1  Use nearest neighbor parameters from SantaLucia 1998\\n*This is the default and recommended value*"
    sc: "[0..2]    - Specifies salt correction formula for the melting\\ntemperature calculation\\n0  Schildkraut and Lifson 1965, used by primer3 up to\\nand including release 1.1.0.\\n1  SantaLucia 1998\\n*This is the default and recommended value*\\n2  Owczarzy et al., 2004"
    oligo: ""
  }
  output {
    File out_stdout = stdout()
  }
}