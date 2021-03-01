version 1.0

task GetgffinfoSequence {
  input {
    Boolean? verbose
    Boolean? no_wrap
    Boolean? split
    File? reference
    Boolean? progress
    String? gff_file
    String? fast_a_file
  }
  command <<<
    get_gff_info sequence \
      ~{gff_file} \
      ~{fast_a_file} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (no_wrap) then "--no-wrap" else ""} \
      ~{if (split) then "--split" else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if (progress) then "--progress" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    verbose: "Reverse complement sequences on the - strand"
    no_wrap: "Write the sequences on one line"
    split: "Split the sequence header of the reference at the\\nfirst space, to emulate BLAST behaviour"
    reference: "Fasta file containing the reference sequences of\\nthe GFF file"
    progress: "Shows Progress Bar"
    gff_file: ""
    fast_a_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}