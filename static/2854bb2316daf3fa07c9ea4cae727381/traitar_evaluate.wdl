version 1.0

task TraitarEvaluate {
  input {
    Boolean? are_pt_ids
    String? phenotype_archive
    Int? min_samples
    String trait_ar_pred_f
    String gold_standard_f
    String out
  }
  command <<<
    traitar evaluate \
      ~{trait_ar_pred_f} \
      ~{gold_standard_f} \
      ~{out} \
      ~{if (are_pt_ids) then "--are_pt_ids" else ""} \
      ~{if defined(phenotype_archive) then ("--phenotype_archive " +  '"' + phenotype_archive + '"') else ""} \
      ~{if defined(min_samples) then ("--min_samples " +  '"' + min_samples + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    are_pt_ids: "set if the gold standard phenotype are index via\\nphenotype ids rather than accessions"
    phenotype_archive: "need if gold standard uses an accession index for\\nmapping"
    min_samples: "minimum number of positive and negative samples to\\nconsider phenotypes for calculation of the macro\\naccuracy\\n"
    trait_ar_pred_f: "phenotype prediction matrix as return by Traitar"
    gold_standard_f: "phenotype matrix with standard of truth"
    out: "output directory"
  }
  output {
    File out_stdout = stdout()
  }
}