version 1.0

task FilterSeer {
  input {
    Boolean? arg_file_output
    String? chisq
    String? pval
    String? maf
    String? beta
    Boolean? substr
    Boolean? pos_beta
    Boolean? arg_field_sort
  }
  command <<<
    filter_seer \
      ~{true="-k" false="" arg_file_output} \
      ~{if defined(chisq) then ("--chisq " +  '"' + chisq + '"') else ""} \
      ~{if defined(pval) then ("--pval " +  '"' + pval + '"') else ""} \
      ~{if defined(maf) then ("--maf " +  '"' + maf + '"') else ""} \
      ~{if defined(beta) then ("--beta " +  '"' + beta + '"') else ""} \
      ~{true="--substr" false="" substr} \
      ~{true="--pos_beta" false="" pos_beta} \
      ~{true="-s" false="" arg_field_sort}
  >>>
  parameter_meta {
    arg_file_output: "[ --kmers ] arg     file of output from seer"
    chisq: "minimum unadjusted p-value to output"
    pval: "minimum adjusted p-value to output"
    maf: "minimum maf/max 1-maf to output"
    beta: "minimum |beta| to output"
    substr: "remove smaller kmers completely represented elsewhere"
    pos_beta: "output positive effect sizes only"
    arg_field_sort: "[ --sort ] arg      field to sort on: chisq, pval, maf or beta"
  }
}