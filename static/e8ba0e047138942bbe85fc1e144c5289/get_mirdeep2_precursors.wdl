version 1.0

task GetMirdeep2Precursors.pl {
  input {
    Boolean? s
    Boolean? var_1
    Boolean? output_dna_rna
    Boolean? make_simple_d
    Boolean? getmature_instead_precursor
    Boolean? getstar_instead_precursor
    Boolean? trackname_for_bedfiles
    Boolean? outdir
    Boolean? options
    Boolean? more_options
  }
  command <<<
    get_mirdeep2_precursors.pl \
      ~{true="-s" false="" s} \
      ~{true="-t" false="" var_1} \
      ~{true="-d" false="" output_dna_rna} \
      ~{true="-p" false="" make_simple_d} \
      ~{true="-m" false="" getmature_instead_precursor} \
      ~{true="-k" false="" getstar_instead_precursor} \
      ~{true="-T" false="" trackname_for_bedfiles} \
      ~{true="-o" false="" outdir} \
      ~{true="-OPTIONS" false="" options} \
      ~{true="-MORE_OPTIONS" false="" more_options}
  >>>
  parameter_meta {
    s: "[int]        output only precursors with min-score >= [int]"
    var_1: "[int]        output only precursors with score     <  [int]"
    output_dna_rna: "output dna instead of rna"
    make_simple_d: "make simple id with the name only"
    getmature_instead_precursor: "get_mature instead of precursor"
    getstar_instead_precursor: "get_star instead of precursor"
    trackname_for_bedfiles: "Trackname for bedfiles"
    outdir: "outdir"
    options: ""
    more_options: ""
  }
}