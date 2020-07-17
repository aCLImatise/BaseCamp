version 1.0

task SmoothingFusionsPsl.py {
  input {
    String? input_file_containing
    String? wiggle
    String? output_file_containing
  }
  command <<<
    smoothing_fusions_psl.py \
      ~{if defined(input_file_containing) then ("--input " +  '"' + input_file_containing + '"') else ""} \
      ~{if defined(wiggle) then ("--wiggle " +  '"' + wiggle + '"') else ""} \
      ~{if defined(output_file_containing) then ("--output " +  '"' + output_file_containing + '"') else ""}
  >>>
  parameter_meta {
    input_file_containing: "The input file containing the reads alignments supporting potential fusion genes."
    wiggle: "The maximum size of the clipping done in the alignment gaps of the reads. Default is '3'."
    output_file_containing: "The output file containing reads alignments suporting potential fusion genes, such that the split reads are overlapping more."
  }
}