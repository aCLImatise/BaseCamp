version 1.0

task InspectFusionSequences.py {
  input {
    String? input_file_containing
    String? output_file_written
    String? overlap
    String? length
    String? km_er
    String? poly
    String? threshold
    String? threshold_two
    Boolean? quiet
    String? author
  }
  command <<<
    inspect_fusion_sequences.py \
      ~{if defined(input_file_containing) then ("--input " +  '"' + input_file_containing + '"') else ""} \
      ~{if defined(output_file_written) then ("--output " +  '"' + output_file_written + '"') else ""} \
      ~{if defined(overlap) then ("--overlap " +  '"' + overlap + '"') else ""} \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""} \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""} \
      ~{if defined(poly) then ("--poly " +  '"' + poly + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(threshold_two) then ("--threshold2 " +  '"' + threshold_two + '"') else ""} \
      ~{true="--quiet" false="" quiet} \
      ~{if defined(author) then ("--author " +  '"' + author + '"') else ""}
  >>>
  parameter_meta {
    input_file_containing: "The input file containing the fusion (chromosomal) coordinates for each fusion genes."
    output_file_written: "The output file where the frame predictions are written."
    overlap: "The length of region where the two consecutive windows are overlapping. Default is 12."
    length: "The length of the sliding window. Default is 24."
    km_er: "The length of the kmer used in computing the codelength. Default is 2."
    poly: "The minimum length of the polyN. Default is 15."
    threshold: "Any window which compresses less this threshold is considered to contain a short tandem repeat and the read will be filtered out. Default is 1.4."
    threshold_two: "Any window which compresses less this threshold is considered to contain a short tandem repeat and the read will be filtered out. Default is 4.5."
    quiet: "Do not print status messages to stdout."
    author: "Daniel Nicorici, E-mail: Daniel.Nicorici@gmail.com"
  }
}