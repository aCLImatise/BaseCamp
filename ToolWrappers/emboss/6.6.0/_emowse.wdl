version 1.0

task Emowse {
  input {
    Boolean? weight
    Boolean? mono
    Boolean? mw_data
    Boolean? frequencies
    Boolean? pc_range
    Boolean? tolerance
    Boolean? partials
    File file
  }
  command <<<
    _emowse \
      ~{file} \
      ~{if (weight) then "-weight" else ""} \
      ~{if (mono) then "-mono" else ""} \
      ~{if (mw_data) then "-mwdata" else ""} \
      ~{if (frequencies) then "-frequencies" else ""} \
      ~{if (pc_range) then "-pcrange" else ""} \
      ~{if (tolerance) then "-tolerance" else ""} \
      ~{if (partials) then "-partials" else ""}
  >>>
  parameter_meta {
    weight: "integer    [0] Whole sequence molwt (Any integer value)"
    mono: "boolean    [N] Use monoisotopic weights"
    mw_data: "datafile   [Emolwt.dat] Molecular weights data file"
    frequencies: "datafile   [Efreqs.dat] Amino acid frequencies data"
    pc_range: "integer    [25] Allowed whole sequence weight\\nvariability (Integer from 0 to 75)"
    tolerance: "float      [0.1] Tolerance (Number from 0.100 to 1.000)"
    partials: "float      [0.4] Partials factor (Number from 0.100 to\\n1.000)"
    file: "-enzyme             menu       [1] Enzyme or reagent (Values: 1 (Trypsin);"
  }
  output {
    File out_stdout = stdout()
  }
}