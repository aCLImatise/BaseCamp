version 1.0

task Ct2dot {
  input {
    File? quiet
    Boolean? format
    File ct_file
    Int structure_number
    File bracket_file
  }
  command <<<
    ct2dot \
      ~{ct_file} \
      ~{structure_number} \
      ~{bracket_file} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (format) then "--format" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    quiet: "Suppress unnecessary output. This option is implied when the output file is\\n'-' (STDOUT)."
    format: "A number or name that indicates how subsequent sub-structures are formatted\\n(relevant only when more than one structure is being written).\\nValid values are:\\n(1) simple -- Susbequent structures (after the first one) are written with\\na Structure-Line  '(((....)))' only -- (no title or sequence)\\n(2) side   -- A structure label is appended to the right side of each\\nStructure-Line e.g. '(((....)))  ENERGY= -3.6  E.coli'.\\n(3) multi  -- Susbequent structures are each written with a Title-Line\\n'>TITLE' followed by a Structure-Line.\\n(4) full   -- All structures written with a full header, including a\\n'>TITLE' line followed by a Sequence-Line and then a Structure-Line.\\nThe default is 'multi'.\\n"
    ct_file: ""
    structure_number: ""
    bracket_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_quiet = "${in_quiet}"
  }
}