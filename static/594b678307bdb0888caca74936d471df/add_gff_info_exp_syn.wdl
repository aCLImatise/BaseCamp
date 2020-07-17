version 1.0

task AddGffInfoExpSyn {
  input {
    File? reference
    Boolean? split
    Boolean? progress
    String? input_file
    String? output_file
  }
  command <<<
    add-gff-info exp_syn \
      ~{input_file} \
      ~{output_file} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{true="--split" false="" split} \
      ~{true="--progress" false="" progress}
  >>>
  parameter_meta {
    reference: "reference sequence in fasta format  [required]"
    split: "Split the sequence header of the reference at the first space, to emulate BLAST behaviour"
    progress: "Shows Progress Bar"
    input_file: ""
    output_file: ""
  }
}