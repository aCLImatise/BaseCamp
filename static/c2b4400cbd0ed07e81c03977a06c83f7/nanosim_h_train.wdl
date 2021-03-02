version 1.0

task Nanosimhtrain {
  input {
    String? in_file
    File? maf
    Boolean? no_model_fit
    Int? b
    Boolean? v
    String extension
  }
  command <<<
    nanosim_h_train \
      ~{extension} \
      ~{if defined(in_file) then ("--infile " +  '"' + in_file + '"') else ""} \
      ~{if defined(maf) then ("--maf " +  '"' + maf + '"') else ""} \
      ~{if (no_model_fit) then "--no-model-fit" else ""} \
      ~{if defined(b) then ("-b " +  '"' + b + '"') else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in_file: "training ONT real reads, must be fasta files"
    maf: "user can provide their own alignment file, with maf"
    no_model_fit: "no model fitting"
    b: ""
    v: ""
    extension: "-b int, --num-bins int"
  }
  output {
    File out_stdout = stdout()
  }
}