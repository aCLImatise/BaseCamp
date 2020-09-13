version 1.0

task AddgffinfoExpSyn {
  input {
    Boolean? verbose
    File? reference
    Boolean? split
    Boolean? progress
    String? input_file
    String? output_file
  }
  command <<<
    add_gff_info exp_syn \
      ~{input_file} \
      ~{output_file} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if (split) then "--split" else ""} \
      ~{if (progress) then "--progress" else ""}
  >>>
  parameter_meta {
    verbose: ""
    reference: "reference sequence in fasta format  [required]"
    split: "Split the sequence header of the reference at the\\nfirst space, to emulate BLAST behaviour"
    progress: "Shows Progress Bar"
    input_file: ""
    output_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}