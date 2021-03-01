version 1.0

task Cons {
  input {
    Boolean? data_file
    Boolean? plurality
    Boolean? identity
    Boolean? set_case
    Boolean? name
  }
  command <<<
    _cons \
      ~{if (data_file) then "-datafile" else ""} \
      ~{if (plurality) then "-plurality" else ""} \
      ~{if (identity) then "-identity" else ""} \
      ~{if (set_case) then "-setcase" else ""} \
      ~{if (name) then "-name" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    data_file: "matrix     [EBLOSUM62 for protein, EDNAFULL for DNA]\\nThis is the scoring matrix file used when\\ncomparing sequences. By default it is the\\nfile 'EBLOSUM62' (for proteins) or the file\\n'EDNAFULL' (for nucleic sequences). These\\nfiles are found in the 'data' directory of\\nthe EMBOSS installation."
    plurality: "float      [Half the total sequence weighting] Set a\\ncut-off for the number of positive matches\\nbelow which there is no consensus. The\\ndefault plurality is taken as half the total\\nweight of all the sequences in the\\nalignment. (Any numeric value)"
    identity: "integer    [0] Provides the facility of setting the\\nrequired number of identities at a site for\\nit to give a consensus at that position.\\nTherefore, if this is set to the number of\\nsequences in the alignment only columns of\\nidentities contribute to the consensus.\\n(Integer 0 or more)"
    set_case: "float      [@( $(sequence.totweight) / 2)] Sets the\\nthreshold for the positive matches above\\nwhich the consensus is is upper-case and\\nbelow which the consensus is in lower-case.\\n(Any numeric value)"
    name: "string     Name of the consensus sequence (Any string)"
  }
  output {
    File out_stdout = stdout()
  }
}