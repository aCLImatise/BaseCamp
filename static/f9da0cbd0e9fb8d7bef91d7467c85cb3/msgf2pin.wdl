version 1.0

task Msgf2pin {
  input {
    Boolean? enzyme
    Boolean? max_mass
    String target_dot_mz_id
    String decoy_dot_mz_id
  }
  command <<<
    msgf2pin \
      ~{target_dot_mz_id} \
      ~{decoy_dot_mz_id} \
      ~{true="--enzyme" false="" enzyme} \
      ~{true="--max-mass" false="" max_mass}
  >>>
  parameter_meta {
    enzyme: "Type of enzyme  \"no_enzyme\",\"elastase\",\"pepsin\",\"proteinasek\",\"therm olysin\",\"chymotrypsin\",\"lys-n\",\"lys-c\",\"arg-c\",\"asp- n\",\"glu-c\",\"trypsin\" default=\"trypsin\""
    max_mass: "Maximum peptide mass allowed used in the search  engine (default 6000)(Only valid when using option  -F)."
    target_dot_mz_id: ""
    decoy_dot_mz_id: ""
  }
}