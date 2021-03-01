version 1.0

task SurpyvorPrf {
  input {
    Boolean? verbose
    String? truth
    String? test
    String? distance
    Int? minlength
    Boolean? ignore_type
    Boolean? ignore_chrom_s
    File? keep_merged
    Boolean? bar
    Boolean? matrix
    Boolean? venn
  }
  command <<<
    surpyvor prf \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(truth) then ("--truth " +  '"' + truth + '"') else ""} \
      ~{if defined(test) then ("--test " +  '"' + test + '"') else ""} \
      ~{if defined(distance) then ("--distance " +  '"' + distance + '"') else ""} \
      ~{if defined(minlength) then ("--minlength " +  '"' + minlength + '"') else ""} \
      ~{if (ignore_type) then "--ignore_type" else ""} \
      ~{if (ignore_chrom_s) then "--ignore_chroms" else ""} \
      ~{if defined(keep_merged) then ("--keepmerged " +  '"' + keep_merged + '"') else ""} \
      ~{if (bar) then "--bar" else ""} \
      ~{if (matrix) then "--matrix" else ""} \
      ~{if (venn) then "--venn" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    verbose: "Print out more information while running."
    truth: "vcf containing truth set"
    test: "vcf containing test set"
    distance: "maximum distance between test and truth call"
    minlength: "Minimum length of SVs to be taken into account"
    ignore_type: "Ignore the type of the structural variant"
    ignore_chrom_s: "[IGNORE_CHROMS [IGNORE_CHROMS ...]]\\nChromosomes to ignore for prf calculation."
    keep_merged: "Save merged vcf file."
    bar: "Make stacked bar chart of SV lengths coloured by\\nvalidation status"
    matrix: "Make a confusion matrix."
    venn: "Make a venn diagram."
  }
  output {
    File out_stdout = stdout()
  }
}