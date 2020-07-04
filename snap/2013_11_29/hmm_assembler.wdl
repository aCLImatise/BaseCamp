version 1.0

task HmmAssembler.pl {
  input {
    Boolean? var_0
    Boolean? e
    Boolean? var_2
    Boolean? d
    Boolean? m
    Boolean? s
    Boolean? var_6
    Boolean? var_7
    Boolean? n
    Boolean? orderlength_include_model
    Boolean? orderlength_include_requires
    Boolean? orderlength_include_moel
    Boolean? include_generic_promoter_model
    Boolean? include_generic_repeat_model
    Boolean? include_reverse_model
    Boolean? use_duration_model
    Boolean? include_celegans_transsplicing
    Boolean? clade_sets_fly
    Boolean? single_gene_model
    String? include_gcag_model
    Boolean? options
    Boolean? more_options
  }
  command <<<
    hmm-assembler.pl \
      ~{true="-i" false="" var_0} \
      ~{true="-e" false="" e} \
      ~{true="-A" false="" var_2} \
      ~{true="-D" false="" d} \
      ~{true="-M" false="" m} \
      ~{true="-S" false="" s} \
      ~{true="-C" false="" var_6} \
      ~{true="-I" false="" var_7} \
      ~{true="-N" false="" n} \
      ~{true="-3" false="" orderlength_include_model} \
      ~{true="-a" false="" orderlength_include_requires} \
      ~{true="-5" false="" orderlength_include_moel} \
      ~{true="-p" false="" include_generic_promoter_model} \
      ~{true="-r" false="" include_generic_repeat_model} \
      ~{true="-o" false="" include_reverse_model} \
      ~{true="-x" false="" use_duration_model} \
      ~{true="-t" false="" include_celegans_transsplicing} \
      ~{true="-Z" false="" clade_sets_fly} \
      ~{true="-1" false="" single_gene_model} \
      ~{if defined(include_gcag_model) then ("-c " +  '"' + include_gcag_model + '"') else ""} \
      ~{true="-OPTIONS" false="" options} \
      ~{true="-MORE_OPTIONS" false="" more_options}
  >>>
  parameter_meta {
    var_0: "<length>       [500]"
    e: "<length>       [1000]"
    var_2: "<order:length> [0:30]"
    d: "<order:length> [0:9]"
    m: "<order:length> [0:15]"
    s: "<order:length> [0:9]"
    var_6: "<order>        [4]"
    var_7: "<order>        [4]"
    n: "<order>        [4]"
    orderlength_include_model: "<order:length> []  include 3'UTR model, requires -a"
    orderlength_include_requires: "<order:length> []  include PolyA model, requires -3"
    orderlength_include_moel: "<order:length> []  include 5'UTR moel, requires -p"
    include_generic_promoter_model: "include generic promoter model, requires -5"
    include_generic_repeat_model: "include generic repeat model"
    include_reverse_model: "include reverse ORF model"
    use_duration_model: "use explicit duration intron model"
    include_celegans_transsplicing: "include C.elegans trans-splicing, requires -p, -5"
    clade_sets_fly: "<clade>            sets clade-specific values (worm, fly, plant)"
    single_gene_model: "single gene model"
    include_gcag_model: "include GC-AG splice donor model"
    options: ""
    more_options: ""
  }
}