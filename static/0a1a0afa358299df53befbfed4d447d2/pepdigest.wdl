version 1.0

task Pepdigest {
  input {
    Boolean? menu
    Boolean? mono
  }
  command <<<
    pepdigest \
      ~{true="-menu" false="" menu} \
      ~{true="-mono" false="" mono}
  >>>
  parameter_meta {
    menu: "menu       [1] Select number (Values: 1 (Trypsin); 2 (Lys-C); 3 (Arg-C); 4 (Asp-N); 5 (V8-bicarb); 6 (V8-phosph); 7 (Chymotrypsin); 8 (CNBr))"
    mono: "boolean    [N] Use monoisotopic weights"
  }
}