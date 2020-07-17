version 1.0

task PredictFrame.py {
  input {
    String? gtf
    String? transcripts
    String? input_file_containing
    String? output_file_written
    Boolean? compress_transcripts
    Boolean? quiet
    String? author
  }
  command <<<
    predict_frame.py \
      ~{if defined(gtf) then ("--gtf " +  '"' + gtf + '"') else ""} \
      ~{if defined(transcripts) then ("--transcripts " +  '"' + transcripts + '"') else ""} \
      ~{if defined(input_file_containing) then ("--input " +  '"' + input_file_containing + '"') else ""} \
      ~{if defined(output_file_written) then ("--output " +  '"' + output_file_written + '"') else ""} \
      ~{true="--compress-transcripts" false="" compress_transcripts} \
      ~{true="--quiet" false="" quiet} \
      ~{if defined(author) then ("--author " +  '"' + author + '"') else ""}
  >>>
  parameter_meta {
    gtf: "The input GTF file containing the genome annotation."
    transcripts: "The input FASTA file contains the DNA sequences of all ENSEMBL transcripts."
    input_file_containing: "The input file containing the fusion (chromosomal) coordinates for each fusion genes."
    output_file_written: "The output file where the frame predictions are written."
    compress_transcripts: "Compress the transcript sequences."
    quiet: "Do not print status messages to stdout."
    author: "Daniel Nicorici, E-mail: Daniel.Nicorici@gmail.com"
  }
}