version 1.0

task GraphProt.pl {
  input {
    Boolean? mode
    Boolean? action
    Boolean? only_seq
    Boolean? prefix
    Boolean? model
    Boolean? fast_a
    Boolean? man
    Boolean? params
    Boolean? graphprot_radius_default
    Boolean? graphprot_distance_default
    Boolean? bit_size
    Boolean? neg_fast_a
    Boolean? lambda
    Boolean? epochs
    Boolean? affinities
    Boolean? svr_parameter_c
    Boolean? epsilon
    Boolean? percentile
    Boolean? motif_len
    String? motif_top_n
  }
  command <<<
    GraphProt.pl \
      ~{true="-mode" false="" mode} \
      ~{true="-action" false="" action} \
      ~{true="-onlyseq" false="" only_seq} \
      ~{true="-prefix" false="" prefix} \
      ~{true="-model" false="" model} \
      ~{true="-fasta" false="" fast_a} \
      ~{true="-man" false="" man} \
      ~{true="-params" false="" params} \
      ~{true="-R" false="" graphprot_radius_default} \
      ~{true="-D" false="" graphprot_distance_default} \
      ~{true="-bitsize" false="" bit_size} \
      ~{true="-negfasta" false="" neg_fast_a} \
      ~{true="-lambda" false="" lambda} \
      ~{true="-epochs" false="" epochs} \
      ~{true="-affinities" false="" affinities} \
      ~{true="-c" false="" svr_parameter_c} \
      ~{true="-epsilon" false="" epsilon} \
      ~{true="-percentile" false="" percentile} \
      ~{true="-motif_len" false="" motif_len} \
      ~{if defined(motif_top_n) then ("-motif_top_n " +  '"' + motif_top_n + '"') else ""}
  >>>
  parameter_meta {
    mode: "'regression' or 'classification' default: classification"
    action: "what should GraphProt do? ls: optimize parameters cv: run a crossvalidation train: train a model predict: predict binding for a whole site predict_profile: predict binding profiles predict_has: predict high-affinity sites motif: create sequence and structure motifs given a model"
    only_seq: "use GraphProt sequence models"
    prefix: "this prefix is used for all results default: GraphProt"
    model: "GraphProt model"
    fast_a: "fasta file containing binding sites"
    man: "full documentation"
    params: "parameter config file created by -action ls, alternatively use the following options to manually enter the desired parameters"
    graphprot_radius_default: "GraphProt radius default: 1"
    graphprot_distance_default: "GraphProt distance default: 4"
    bit_size: "GraphProt bitsize used for feature encoding default: 14"
    neg_fast_a: "fasta file containing negative class sequences"
    lambda: "SGD parameter lambda  [classification] default: 10e-4"
    epochs: "SGD parameter epochs  [classification] default: 10"
    affinities: "list of affinities one value per line, same order as binding sites (fasta)"
    svr_parameter_c: "SVR parameter c       [regression] default: 1"
    epsilon: "SVR parameter epsilon [regression] default: 0.1"
    percentile: "keep only regions with average score above a percentile as high-affinity sites default: 99"
    motif_len: "set length of motifs (default: 12)"
    motif_top_n: "use n top-scoring subsequences for motif creation (default: 1000)"
  }
}