version 1.0

task RunCQPMStrandedsh {
  input {
    File? file_name_genome
    Int? file_aligned_transcripts
    String? name_providing_parameters
    Int? high_confidence_genes
    Int? of_threads_default
    String? when_using_rnaseq
    Int? stage_see_manual
    Int? file_aligned_est
    String? predict_genes_softmasked
  }
  command <<<
    run_CQ_PM_stranded_sh \
      ~{if defined(file_name_genome) then ("-f " +  '"' + file_name_genome + '"') else ""} \
      ~{if defined(file_aligned_transcripts) then ("-t " +  '"' + file_aligned_transcripts + '"') else ""} \
      ~{if defined(name_providing_parameters) then ("-s " +  '"' + name_providing_parameters + '"') else ""} \
      ~{if defined(high_confidence_genes) then ("-a " +  '"' + high_confidence_genes + '"') else ""} \
      ~{if defined(of_threads_default) then ("-p " +  '"' + of_threads_default + '"') else ""} \
      ~{if defined(when_using_rnaseq) then ("-d " +  '"' + when_using_rnaseq + '"') else ""} \
      ~{if defined(stage_see_manual) then ("-i " +  '"' + stage_see_manual + '"') else ""} \
      ~{if defined(file_aligned_est) then ("-e " +  '"' + file_aligned_est + '"') else ""} \
      ~{if defined(predict_genes_softmasked) then ("-h " +  '"' + predict_genes_softmasked + '"') else ""}
  >>>
  parameter_meta {
    file_name_genome: "by file name of genome sequence"
    file_aligned_transcripts: "file of aligned transcripts (recommended)"
    name_providing_parameters: "name, providing pre-trained parameters exist"
    high_confidence_genes: "of high confidence genes that can be used for training"
    of_threads_default: "of threads (default is 1)"
    when_using_rnaseq: "this when using un-stranded RNA-seq. By default,\\nCodingQuarry expects stranded RNA-seq"
    stage_see_manual: "after stage 1 (see manual)"
    file_aligned_est: "file of aligned EST data"
    predict_genes_softmasked: "not predict genes in soft-masked regions (that is, hard-mask these regions)"
  }
  output {
    File out_stdout = stdout()
  }
}