version 1.0

task GraphProtpl {
  input {
    Boolean? mode
    Boolean? action
    Boolean? only_seq
    Boolean? prefix
    Boolean? model
    Boolean? fast_a
    Boolean? man
    Boolean? params
    Int? abstraction
    Boolean? graphprot_radiusdefault
    Boolean? graphprot_distancedefault
    Boolean? bit_size
    Boolean? neg_fast_a
    Boolean? lambda
    Boolean? epochs
    Boolean? affinities
    Boolean? svr_parameter_c
    Boolean? epsilon
    Boolean? percentile
    Boolean? motif_len
    Int? motif_top_n
  }
  command <<<
    GraphProt_pl \
      ~{if (mode) then "-mode" else ""} \
      ~{if (action) then "-action" else ""} \
      ~{if (only_seq) then "-onlyseq" else ""} \
      ~{if (prefix) then "-prefix" else ""} \
      ~{if (model) then "-model" else ""} \
      ~{if (fast_a) then "-fasta" else ""} \
      ~{if (man) then "-man" else ""} \
      ~{if (params) then "-params" else ""} \
      ~{if defined(abstraction) then ("-abstraction " +  '"' + abstraction + '"') else ""} \
      ~{if (graphprot_radiusdefault) then "-R" else ""} \
      ~{if (graphprot_distancedefault) then "-D" else ""} \
      ~{if (bit_size) then "-bitsize" else ""} \
      ~{if (neg_fast_a) then "-negfasta" else ""} \
      ~{if (lambda) then "-lambda" else ""} \
      ~{if (epochs) then "-epochs" else ""} \
      ~{if (affinities) then "-affinities" else ""} \
      ~{if (svr_parameter_c) then "-c" else ""} \
      ~{if (epsilon) then "-epsilon" else ""} \
      ~{if (percentile) then "-percentile" else ""} \
      ~{if (motif_len) then "-motif_len" else ""} \
      ~{if defined(motif_top_n) then ("-motif_top_n " +  '"' + motif_top_n + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    mode: "'regression' or 'classification'\\ndefault: classification"
    action: "what should GraphProt do?\\nls: optimize parameters\\ncv: run a crossvalidation\\ntrain: train a model\\npredict: predict binding for a whole site\\npredict_profile: predict binding profiles\\npredict_has: predict high-affinity sites\\nmotif: create sequence and structure motifs given a model"
    only_seq: "use GraphProt sequence models"
    prefix: "this prefix is used for all results\\ndefault: GraphProt"
    model: "GraphProt model"
    fast_a: "fasta file containing binding sites"
    man: "full documentation"
    params: "parameter config file created by -action ls, alternatively\\nuse the following options to manually enter the desired\\nparameters"
    abstraction: "abstraction level [RNA structure graphs]\\ndefault: 3"
    graphprot_radiusdefault: "GraphProt radius\\ndefault: 1"
    graphprot_distancedefault: "GraphProt distance\\ndefault: 4"
    bit_size: "GraphProt bitsize used for feature encoding\\ndefault: 14"
    neg_fast_a: "fasta file containing negative class sequences"
    lambda: "SGD parameter lambda  [classification]\\ndefault: 10e-4"
    epochs: "SGD parameter epochs  [classification]\\ndefault: 10"
    affinities: "list of affinities\\none value per line, same order as binding sites (fasta)"
    svr_parameter_c: "SVR parameter c       [regression]\\ndefault: 1"
    epsilon: "SVR parameter epsilon [regression]\\ndefault: 0.1"
    percentile: "keep only regions with average score above a percentile\\nas high-affinity sites\\ndefault: 99"
    motif_len: "set length of motifs\\n(default: 12)"
    motif_top_n: "use n top-scoring subsequences for motif creation\\n(default: 1000)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}