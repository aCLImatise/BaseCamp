version 1.0

task Hmmassemblerpl {
  input {
    Boolean? var_0
    Boolean? d
    Boolean? m
    Boolean? s
    Boolean? orderlength_include_utr_model_requires
    Boolean? orderlength_include_polya_model_requires
    Boolean? orderlength_include_moel_requires
    Boolean? include_model_requires
    Boolean? include_generic_model
    Boolean? include_reverse_model
    Boolean? use_duration_model
    Boolean? include_transsplicing_requires
    Boolean? clade_sets_cladespecific
    Boolean? single_gene_model
    String? include_splice_model
    Boolean? more_options
    Boolean? options
    String name
    Directory directory_of_files_from_forge
  }
  command <<<
    hmm_assembler_pl \
      ~{name} \
      ~{directory_of_files_from_forge} \
      ~{if (var_0) then "-A" else ""} \
      ~{if (d) then "-D" else ""} \
      ~{if (m) then "-M" else ""} \
      ~{if (s) then "-S" else ""} \
      ~{if (orderlength_include_utr_model_requires) then "-3" else ""} \
      ~{if (orderlength_include_polya_model_requires) then "-a" else ""} \
      ~{if (orderlength_include_moel_requires) then "-5" else ""} \
      ~{if (include_model_requires) then "-p" else ""} \
      ~{if (include_generic_model) then "-r" else ""} \
      ~{if (include_reverse_model) then "-o" else ""} \
      ~{if (use_duration_model) then "-x" else ""} \
      ~{if (include_transsplicing_requires) then "-t" else ""} \
      ~{if (clade_sets_cladespecific) then "-Z" else ""} \
      ~{if (single_gene_model) then "-1" else ""} \
      ~{if defined(include_splice_model) then ("-c " +  '"' + include_splice_model + '"') else ""} \
      ~{if (more_options) then "-MORE_OPTIONS" else ""} \
      ~{if (options) then "-OPTIONS" else ""}
  >>>
  parameter_meta {
    var_0: "<order:length> [0:30]"
    d: "<order:length> [0:9]"
    m: "<order:length> [0:15]"
    s: "<order:length> [0:9]"
    orderlength_include_utr_model_requires: "<order:length> []  include 3'UTR model, requires -a"
    orderlength_include_polya_model_requires: "<order:length> []  include PolyA model, requires -3"
    orderlength_include_moel_requires: "<order:length> []  include 5'UTR moel, requires -p"
    include_model_requires: "include generic promoter model, requires -5"
    include_generic_model: "include generic repeat model"
    include_reverse_model: "include reverse ORF model"
    use_duration_model: "use explicit duration intron model"
    include_transsplicing_requires: "include C.elegans trans-splicing, requires -p, -5"
    clade_sets_cladespecific: "<clade>            sets clade-specific values (worm, fly, plant)"
    single_gene_model: "single gene model"
    include_splice_model: "include GC-AG splice donor model"
    more_options: ""
    options: ""
    name: ""
    directory_of_files_from_forge: ""
  }
  output {
    File out_stdout = stdout()
  }
}