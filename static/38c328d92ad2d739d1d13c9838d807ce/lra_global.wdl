version 1.0

task LraGlobal {
  input {
    Boolean? ccs
    Boolean? clr
    Boolean? ont
    Boolean? contig
    Boolean? int_minimizer_window
    Boolean? int_maximum_minimizer
    Boolean? int_word_size
    String? help
    String lra
    String index
    File file_dot_fa
  }
  command <<<
    lra global \
      ~{lra} \
      ~{index} \
      ~{file_dot_fa} \
      ~{if (ccs) then "-CCS" else ""} \
      ~{if (clr) then "-CLR" else ""} \
      ~{if (ont) then "-ONT" else ""} \
      ~{if (contig) then "-CONTIG" else ""} \
      ~{if (int_minimizer_window) then "-W" else ""} \
      ~{if (int_maximum_minimizer) then "-F" else ""} \
      ~{if (int_word_size) then "-K" else ""} \
      ~{if defined(help) then ("-h " +  '"' + help + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/lra:1.1.2--h5ef6573_0"
  }
  parameter_meta {
    ccs: "(flag) Index for aligning CCS reads"
    clr: "(flag) Index for aligning CLR reads"
    ont: "(flag) Index for aligning Nanopore reads"
    contig: "(flag) Index for aligning large contigs"
    int_minimizer_window: "(int) Minimizer window size (10)."
    int_maximum_minimizer: "(int) Maximum minimizer frequency. (default: 60 for CLR and NANO reads; 50 for CCS reads)"
    int_word_size: "(int) Word size"
    help: "help."
    lra: ""
    index: ""
    file_dot_fa: ""
  }
  output {
    File out_stdout = stdout()
  }
}