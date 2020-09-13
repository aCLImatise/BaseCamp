version 1.0

task Pepdigest {
  input {
    Boolean? menu
    Boolean? mono
    Boolean? mw_data
    Boolean? ragging
    Boolean? termini
    Boolean? overlap
    Boolean? all_partials
    String acids
  }
  command <<<
    pepdigest \
      ~{acids} \
      ~{if (menu) then "-menu" else ""} \
      ~{if (mono) then "-mono" else ""} \
      ~{if (mw_data) then "-mwdata" else ""} \
      ~{if (ragging) then "-ragging" else ""} \
      ~{if (termini) then "-termini" else ""} \
      ~{if (overlap) then "-overlap" else ""} \
      ~{if (all_partials) then "-allpartials" else ""}
  >>>
  parameter_meta {
    menu: "menu       [1] Select number (Values: 1 (Trypsin); 2\\n(Lys-C); 3 (Arg-C); 4 (Asp-N); 5\\n(V8-bicarb); 6 (V8-phosph); 7\\n(Chymotrypsin); 8 (CNBr))"
    mono: "boolean    [N] Use monoisotopic weights"
    mw_data: "datafile   [Emolwt.dat] Molecular weight data for amino"
    ragging: "boolean    Allows semi-specific and non-specific\\ndigestion. This option is particularly\\nuseful for generating lists of peptide\\nsequences for protein identification using\\nmass-spectrometry."
    termini: "menu       [1] Select number (Values: 1 (none); 2\\n(nterm); 3 (cterm); 4 (nterm OR cterm))"
    overlap: "boolean    Used for partial digestion. Shows all cuts\\nfrom favoured cut sites plus 1..3, 2..4,\\n3..5 etc but not (e.g.) 2..5. Overlaps are\\ntherefore fragments with exactly one\\npotential cut site within it."
    all_partials: "boolean    As for overlap but fragments containing more\\nthan one potential cut site are included."
    acids: "-unfavoured         boolean    Trypsin will not normally cut after 'KR' if"
  }
  output {
    File out_stdout = stdout()
  }
}