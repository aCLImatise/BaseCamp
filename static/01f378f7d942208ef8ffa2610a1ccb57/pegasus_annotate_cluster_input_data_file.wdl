version 1.0

task PegasusAnnotateClusterInputDataFile {
  input {
    String? annotation
    Boolean? do_not_use_non_de_genes
    String? minimum_report_score
    String? de_key
    String? de_alpha
    String? de_test
    String? markers
    String pegasus
    String annotate_cluster
  }
  command <<<
    pegasus annotate_cluster input_data_file \
      ~{pegasus} \
      ~{annotate_cluster} \
      ~{if defined(annotation) then ("--annotation " +  '"' + annotation + '"') else ""} \
      ~{if (do_not_use_non_de_genes) then "--do-not-use-non-de-genes" else ""} \
      ~{if defined(minimum_report_score) then ("--minimum-report-score " +  '"' + minimum_report_score + '"') else ""} \
      ~{if defined(de_key) then ("--de-key " +  '"' + de_key + '"') else ""} \
      ~{if defined(de_alpha) then ("--de-alpha " +  '"' + de_alpha + '"') else ""} \
      ~{if defined(de_test) then ("--de-test " +  '"' + de_test + '"') else ""} \
      ~{if defined(markers) then ("--markers " +  '"' + markers + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pegasuspy:1.2.0--py38h0213d0e_1"
  }
  parameter_meta {
    annotation: ""
    do_not_use_non_de_genes: ""
    minimum_report_score: ""
    de_key: ""
    de_alpha: ""
    de_test: ""
    markers: ""
    pegasus: ""
    annotate_cluster: ""
  }
  output {
    File out_stdout = stdout()
  }
}