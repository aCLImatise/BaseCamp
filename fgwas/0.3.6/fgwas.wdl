version 1.0

task Fgwas {
  input {
    Boolean? input_file_w
    Boolean? stem_names_output
    Boolean? annotations_use_annotations
    Boolean? dists
    Boolean? block_size_number
    Boolean? bed
    Boolean? variance_prior_separate
    Boolean? penalty_sum_squared
    String? print
    Int? xv
    Boolean? dens
    File? cc
    File? fine
    String? only_p
    Boolean? cond
  }
  command <<<
    fgwas \
      ~{if (input_file_w) then "-i" else ""} \
      ~{if (stem_names_output) then "-o" else ""} \
      ~{if (annotations_use_annotations) then "-w" else ""} \
      ~{if (dists) then "-dists" else ""} \
      ~{if (block_size_number) then "-k" else ""} \
      ~{if (bed) then "-bed" else ""} \
      ~{if (variance_prior_separate) then "-v" else ""} \
      ~{if (penalty_sum_squared) then "-p" else ""} \
      ~{if defined(print) then ("-print " +  '"' + print + '"') else ""} \
      ~{if defined(xv) then ("-xv " +  '"' + xv + '"') else ""} \
      ~{if (dens) then "-dens" else ""} \
      ~{if defined(cc) then ("-cc " +  '"' + cc + '"') else ""} \
      ~{if defined(fine) then ("-fine " +  '"' + fine + '"') else ""} \
      ~{if defined(only_p) then ("-onlyp " +  '"' + only_p + '"') else ""} \
      ~{if (cond) then "-cond" else ""}
  >>>
  parameter_meta {
    input_file_w: "[file name] input file w/ Z-scores"
    stem_names_output: "[string] stem for names of output files"
    annotations_use_annotations: "[string] which annotation(s) to use. Separate multiple annotations with plus signs"
    dists: "[string:string] the name of the distance annotation(s) and the file(s) containing the distance model(s)"
    block_size_number: "[integer] block size in number of SNPs (5000)"
    bed: "[string] read block positions from a .bed file"
    variance_prior_separate: "[float] variance of prior on normalized effect size. To average priors, separate with commas (0.01,0.1,0.5)"
    penalty_sum_squared: "[float] penalty on sum of squared lambdas, only relevant for -print (0.2)"
    print: "the per-SNP output"
    xv: "10-fold cross-validation"
    dens: "[string float float] model segment probability according to quantiles of an annotation"
    cc: "is a case-control study, which implies a different input file format"
    fine: "is a fine mapping study, which implies a different input file format"
    only_p: "do optimization under penalized likelihood"
    cond: "[string] estimate the effect size of an annotation conditional on the others in the model"
  }
  output {
    File out_stdout = stdout()
  }
}