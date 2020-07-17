version 1.0

task OFastaLengthDistribution {
  input {
    String? output_file_name
    String? title
    String fast_a
  }
  command <<<
    o-fasta-length-distribution \
      ~{fast_a} \
      ~{if defined(output_file_name) then ("--output " +  '"' + output_file_name + '"') else ""} \
      ~{if defined(title) then ("--title " +  '"' + title + '"') else ""}
  >>>
  parameter_meta {
    output_file_name: "Output file name to store distribution figure"
    title: "Title for the figure"
    fast_a: "FASTA formatted sequences file"
  }
}