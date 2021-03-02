version 1.0

task NanosimhTrain {
  input {
    String? in_file
    String? ref
    File? maf
    Int? num_bins
    Boolean? no_model_fit
    String? p
    String extension
  }
  command <<<
    nanosimh_train \
      ~{extension} \
      ~{if defined(in_file) then ("--infile " +  '"' + in_file + '"') else ""} \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""} \
      ~{if defined(maf) then ("--maf " +  '"' + maf + '"') else ""} \
      ~{if defined(num_bins) then ("--num-bins " +  '"' + num_bins + '"') else ""} \
      ~{if (no_model_fit) then "--no-model-fit" else ""} \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in_file: "training ONT real reads, must be fasta files"
    ref: "reference genome of the training reads"
    maf: "user can provide their own alignment file, with maf"
    num_bins: "number of bins (for development) [20]"
    no_model_fit: "no model fitting"
    p: ""
    extension: "-p str, --profile str"
  }
  output {
    File out_stdout = stdout()
  }
}