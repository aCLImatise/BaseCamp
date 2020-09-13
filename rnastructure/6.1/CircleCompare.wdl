version 1.0

task CircleCompare {
  input {
    Boolean? alternative
    Boolean? exact
    Boolean? file
    Boolean? levo_rotatory
    Boolean? svg
    Boolean? uncircled
    File? number
    Boolean? probability
    Boolean? probability_two
    Boolean? shape
    Boolean? text
    String predicted_ct
    String accepted_ct
    File output_file
  }
  command <<<
    CircleCompare \
      ~{predicted_ct} \
      ~{accepted_ct} \
      ~{output_file} \
      ~{if (alternative) then "--alternative" else ""} \
      ~{if (exact) then "--exact" else ""} \
      ~{if (file) then "--file" else ""} \
      ~{if (levo_rotatory) then "--levorotatory" else ""} \
      ~{if (svg) then "--svg" else ""} \
      ~{if (uncircled) then "--uncircled" else ""} \
      ~{if (number) then "--number" else ""} \
      ~{if (probability) then "--probability" else ""} \
      ~{if (probability_two) then "--probability2" else ""} \
      ~{if (shape) then "--SHAPE" else ""} \
      ~{if (text) then "--text" else ""}
  >>>
  parameter_meta {
    alternative: "Specify that an alternative color scheme should be used.\\nDefault is not to use the alternative color scheme."
    exact: "Specify exact comparison when structure comparison is scored.\\nDefault is to allow flexible pairings."
    file: "Specify that structure file names should be shown in addition to their\\ndescriptions.\\nDefault is not to show structure file names."
    levo_rotatory: "Specify that the drawn structure is rendered counterclockwise.\\nDefault is to render drawn structures clockwise."
    svg: "Specify that the output file should be an SVG image file, rather than a\\nPostscript image file. Note that only one SVG image can be written into a\\nparticular file, so the structure number flag must also be specified when\\nwriting an SVG document."
    uncircled: "Specify that no circles should surround nucleotides when drawing.\\nDefault is to surround nucleotides with circles."
    number: "Specify the index of a particular structure in the predicted CT to be\\ncompared with the accepted CT, one-indexed.\\nDefault is -1, which signifies all structures output to one file."
    probability: "Specify the name of the file from which base pairing probability data will\\nbe read for annotation. This file should describe pairing data for the\\npredicted structure, not the accepted structure.\\nDefault is no probability annotation file used."
    probability_two: "Specify the name of the file from which base pairing probability data will\\nbe read for annotation. This file should describe pairing data for the\\naccepted structure, not the predicted structure.\\nDefault is no probability annotation file used."
    shape: "Specify the name of the file from which SHAPE data will be read for\\nannotation.\\nDefault is no SHAPE annotation file used."
    text: "Specify the name of the text file from which base pairing probability data\\nwill be read for annotation. This file should describe pairing data for the\\npredicted structure, not the accepted structure.\\nDefault is no probability annotation file used.\\n"
    predicted_ct: ""
    accepted_ct: ""
    output_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_number = "${in_number}"
    File out_output_file = "${in_output_file}"
  }
}