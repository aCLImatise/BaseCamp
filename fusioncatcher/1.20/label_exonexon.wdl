version 1.0

task LabelExonexon.py {
  input {
    String? gtf
    String? input_file_containing
    String? output_file_written
    Boolean? quiet
    String? author
  }
  command <<<
    label_exonexon.py \
      ~{if defined(gtf) then ("--gtf " +  '"' + gtf + '"') else ""} \
      ~{if defined(input_file_containing) then ("--input " +  '"' + input_file_containing + '"') else ""} \
      ~{if defined(output_file_written) then ("--output " +  '"' + output_file_written + '"') else ""} \
      ~{true="--quiet" false="" quiet} \
      ~{if defined(author) then ("--author " +  '"' + author + '"') else ""}
  >>>
  parameter_meta {
    gtf: "The input GTF file containing the genome annotation."
    input_file_containing: "The input file containing the fusion (chromosomal) coordinates for each fusion genes."
    output_file_written: "The output file where the frame predictions are written."
    quiet: "Do not print status messages to stdout."
    author: "Daniel Nicorici, E-mail: Daniel.Nicorici@gmail.com"
  }
}