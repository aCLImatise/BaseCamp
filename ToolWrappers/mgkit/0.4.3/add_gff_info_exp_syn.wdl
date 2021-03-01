version 1.0

task AddgffinfoExpSyn {
  input {
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
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if (split) then "--split" else ""} \
      ~{if (progress) then "--progress" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
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