version 1.0

task Sqt2pin {
  input {
    Boolean? enzyme
    Boolean? max_mass
    String? o
    String target_dots_qt
    String decoy_dots_qt
  }
  command <<<
    sqt2pin \
      ~{target_dots_qt} \
      ~{decoy_dots_qt} \
      ~{true="--enzyme" false="" enzyme} \
      ~{true="--max-mass" false="" max_mass} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    enzyme: "Type of enzyme  \"no_enzyme\",\"elastase\",\"pepsin\",\"proteinasek\",\"therm olysin\",\"chymotrypsin\",\"lys-n\",\"lys-c\",\"arg-c\",\"asp- n\",\"glu-c\",\"trypsin\" default=\"trypsin\""
    max_mass: "Maximum peptide mass allowed used in the search  engine (default 6000)(Only valid when using option  -F)."
    o: ""
    target_dots_qt: ""
    decoy_dots_qt: ""
  }
}