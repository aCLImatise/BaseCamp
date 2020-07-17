version 1.0

task NanosimhTrain {
  input {
    String? in_file
    String? ref
    String? maf
    String? profile
    Int? num_bins
    Boolean? no_model_fit
  }
  command <<<
    nanosimh_train \
      ~{if defined(in_file) then ("--infile " +  '"' + in_file + '"') else ""} \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""} \
      ~{if defined(maf) then ("--maf " +  '"' + maf + '"') else ""} \
      ~{if defined(profile) then ("--profile " +  '"' + profile + '"') else ""} \
      ~{if defined(num_bins) then ("--num-bins " +  '"' + num_bins + '"') else ""} \
      ~{true="--no-model-fit" false="" no_model_fit}
  >>>
  parameter_meta {
    in_file: "training ONT real reads, must be fasta files"
    ref: "reference genome of the training reads"
    maf: "user can provide their own alignment file, with maf extension"
    profile: "prefix of output files [training]"
    num_bins: "number of bins (for development) [20]"
    no_model_fit: "no model fitting"
  }
}