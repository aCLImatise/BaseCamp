version 1.0

task Chainsaw {
  input {
    Boolean? arg_specify_cleavage
    Boolean? arg_specify_egtrypsin
    Boolean? arg_specify_number
    Boolean? benchmark
    Boolean? index_only
    Boolean? protein_summary
    String? subset
    String? filter
    String allow_dot
    String fully
  }
  command <<<
    chainsaw \
      ~{allow_dot} \
      ~{fully} \
      ~{if (arg_specify_cleavage) then "-c" else ""} \
      ~{if (arg_specify_egtrypsin) then "-r" else ""} \
      ~{if (arg_specify_number) then "-n" else ""} \
      ~{if (benchmark) then "--benchmark" else ""} \
      ~{if (index_only) then "--indexOnly" else ""} \
      ~{if (protein_summary) then "--proteinSummary" else ""} \
      ~{if defined(subset) then ("--subset " +  '"' + subset + '"') else ""} \
      ~{if defined(filter) then ("--filter " +  '"' + filter + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/proteowizard:3.0.9992"
  }
  parameter_meta {
    arg_specify_cleavage: "[ --cleavageAgentName ] arg        : specify cleavage by name. Options:\\nTrypsin, Arg-C, Asp-N, Asp-N_ambic,\\nChymotrypsin, CNBr, Formic_acid, Lys-C,\\nLys-C/P, PepsinA, TrypChymo, Trypsin/P,\\nV8-DE, V8-E, leukocyte elastase, proline\\nendopeptidase, glutamyl endopeptidase,\\n2-iodobenzoate, no cleavage, unspecific\\ncleavage\\nDefault : trypsin"
    arg_specify_egtrypsin: "[ --cleavageAgentRegex ] arg       : specify a cleavage agent regex (e.g.\\ntrypsin = \\\"(?<=[KR])(?!P)\\\")"
    arg_specify_number: "[ --numMissedCleavages ] arg (=0)  : specify number of missed cleavages to"
    benchmark: ": do not write results"
    index_only: ": create database index (if necessary)"
    protein_summary: ": print a table with index, id, length,\\nMW, and description for each protein"
    subset: ": create a subset database (use filters\\nto define the subset)"
    filter: ": add a protein list filter"
    allow_dot: "-s [ --specificity ] arg              : specify minimum specificity. Options:"
    fully: "-m [ --minLength ] arg (=0)           : specify minimum length of digested "
  }
  output {
    File out_stdout = stdout()
  }
}