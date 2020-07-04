version 1.0

task NanosimHTrain {
  input {
    String? in_file
    String? maf
    Int? num_bins
    Boolean? no_model_fit
    Boolean? v
  }
  command <<<
    nanosim-h-train \
      ~{if defined(in_file) then ("--infile " +  '"' + in_file + '"') else ""} \
      ~{if defined(maf) then ("--maf " +  '"' + maf + '"') else ""} \
      ~{if defined(num_bins) then ("--num-bins " +  '"' + num_bins + '"') else ""} \
      ~{true="--no-model-fit" false="" no_model_fit} \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    in_file: "training ONT real reads, must be fasta files"
    maf: "user can provide their own alignment file, with maf extension"
    num_bins: "number of bins (for development) [20]"
    no_model_fit: "no model fitting"
    v: ""
  }
}