version 1.0

task Runadpred {
  input {
    Boolean? id
    Boolean? __sequence
    Boolean? _localpsipred_pathto
    Boolean? sm
    Boolean? _outputprefix_empty
  }
  command <<<
    run_adpred \
      ~{if (id) then "-id" else ""} \
      ~{if (__sequence) then "-s" else ""} \
      ~{if (_localpsipred_pathto) then "-l" else ""} \
      ~{if (sm) then "-sm" else ""} \
      ~{if (_outputprefix_empty) then "-o" else ""}
  >>>
  parameter_meta {
    id: "| --uniprot-id"
    __sequence: "| --sequence"
    _localpsipred_pathto: "| --local-psipred <path_to_\\\"run_psipred\\\">"
    sm: "| --saturated-mutagenesis (list of start positions separated by comma. Ends are starts+30)"
    _outputprefix_empty: "| --output-prefix (if empty will use protein.id. if prot_id not provided it will be empty)"
  }
  output {
    File out_stdout = stdout()
  }
}