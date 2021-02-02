version 1.0

task Draw {
  input {
    Boolean? circle
    Boolean? flat
    Boolean? levo_rotatory
    Boolean? svg
    Boolean? uncircled
    File? desc
    Boolean? end
    Boolean? loop_probability
    Boolean? max_structures
    File? number
    Boolean? probability
    Boolean? shape
    Boolean? text
    File ct_file
    File output_file
  }
  command <<<
    draw \
      ~{ct_file} \
      ~{output_file} \
      ~{if (circle) then "--circle" else ""} \
      ~{if (flat) then "--flat" else ""} \
      ~{if (levo_rotatory) then "--levorotatory" else ""} \
      ~{if (svg) then "--svg" else ""} \
      ~{if (uncircled) then "--uncircled" else ""} \
      ~{if (desc) then "--desc" else ""} \
      ~{if (end) then "--end" else ""} \
      ~{if (loop_probability) then "--loopprobability" else ""} \
      ~{if (max_structures) then "--maxstructures" else ""} \
      ~{if (number) then "--number" else ""} \
      ~{if (probability) then "--probability" else ""} \
      ~{if (shape) then "--SHAPE" else ""} \
      ~{if (text) then "--text" else ""}
  >>>
  parameter_meta {
    circle: "Specify that the structure should be drawn with its backbone stretched\\naround a circle. Note that pseudoknotted structures will be drawn\\ncircularized even if this option is not specified.\\nDefault is to show a collapsed structure."
    flat: "Specify that the structure should be drawn with its backbone stretched in a\\nstraight line.\\nDefault is to show a collapsed structure."
    levo_rotatory: "Specify that the drawn structure is rendered counterclockwise.\\nDefault is to render drawn structures clockwise."
    svg: "Specify that the output file should be an SVG image file, rather than a\\nPostscript image file. Note that only one SVG image can be written into a\\nparticular file, so the structure number flag must also be specified when\\nwriting an SVG document."
    uncircled: "Specify that no circles should surround nucleotides when drawing.\\nDefault is to surround nucleotides with circles."
    desc: "Configure the output of descriptions. Valid values are: (1) \\\"\\\" or \\\"~none\\\"\\n-- Do not write a description (2) \\\"~file\\\" -- If the default description\\ncorresponds to a file or path, use only the base name of the path (i.e. no\\ndirectory or file extension). (3) \\\"~~\\\" or \\\"~default\\\" -- Use the default\\ndescription (this is the same as not specifying the flag) (4)\\n\\\"~list|DESC1|DESC2|DESC3\\\" -- use this syntax when the output is expected to\\nhave more than one plot. It specifies a list of descriptions will be\\napplied in the order given. The character immediately after \\\"~list\\\" will be\\nused as the separator. (5) Any other value is assumed to be the literal\\ndescription you want to have displayed in the plot legend."
    end: "Specify the ending structure number. Use this in combination with the\\n--number (-n) flag to specify a range of structures to draw, e.g.\\n\\\"--number 3 --end 7\\\" to draw structures 3 through 7."
    loop_probability: "Specify the name of the partition function file from which loop probability\\ndata will be read for annotation. This file should describe pairing data\\nfor the predicted structure, not the accepted structure.\\nDefault is no probability annotation file used."
    max_structures: "Limit the total number of structures drawn. This is useful in automated\\ntool chains to prevent creation of huge output files when many results are\\nreturned from another program (e.g. AllSub)."
    number: "Specify the index of a particular structure in the predicted CT to be\\ncompared with the accepted CT, one-indexed.\\nDefault is -1, which signifies all structures output to one file."
    probability: "Specify the name of the partition function file from which base pairing\\nprobability data will be read for annotation. This file should describe\\npairing data for the predicted structure, not the accepted structure.\\nDefault is no probability annotation file used."
    shape: "Specify the name of the file from which SHAPE data will be read for\\nannotation.\\nDefault is no SHAPE annotation file used."
    text: "Specify the name of the text file from which base pairing probability data\\nwill be read for annotation. This file should describe pairing data for the\\npredicted structure, not the accepted structure.\\nDefault is no probability annotation file used.\\n"
    ct_file: ""
    output_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_desc = "${in_desc}"
    File out_number = "${in_number}"
    File out_output_file = "${in_output_file}"
  }
}