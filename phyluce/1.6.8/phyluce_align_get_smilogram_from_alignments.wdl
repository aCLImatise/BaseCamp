version 1.0

task PhyluceAlignGetSmilogramFromAlignments {
  input {
    Directory? alignments
    File? output_filename_code
    String? input_format
    Int? cores
    Boolean? smil_ogram
  }
  command <<<
    phyluce_align_get_smilogram_from_alignments \
      ~{if defined(alignments) then ("--alignments " +  '"' + alignments + '"') else ""} \
      ~{if defined(output_filename_code) then ("--output " +  '"' + output_filename_code + '"') else ""} \
      ~{if defined(input_format) then ("--input-format " +  '"' + input_format + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{if (smil_ogram) then "--smilogram" else ""}
  >>>
  parameter_meta {
    alignments: "The directory containing the alignment files"
    output_filename_code: "The output filename (without extension - code will add\\n.sqlite)"
    input_format: "The input alignment format"
    cores: "The number of cores to use."
    smil_ogram: "Prepare output for smilogram figure"
  }
  output {
    File out_stdout = stdout()
    File out_output_filename_code = "${in_output_filename_code}"
  }
}