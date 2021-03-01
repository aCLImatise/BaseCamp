version 1.0

task Novo2maq {
  input {
    String? turns_smithwaterman_check
    Boolean? produces_short_report
    String out_dot_map
    String in_dot_list
    String in_dot_novo
  }
  command <<<
    novo2maq \
      ~{out_dot_map} \
      ~{in_dot_list} \
      ~{in_dot_novo} \
      ~{if defined(turns_smithwaterman_check) then ("-s " +  '"' + turns_smithwaterman_check + '"') else ""} \
      ~{if (produces_short_report) then "-r" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    turns_smithwaterman_check: "|off Turns on or off the Smith-Waterman check of indels. When only indels that/n                          would be part of optimum local alignment are converted as MAQ indels. Default is off /n                          which will report all indels found by Novoalign."
    produces_short_report: "Produces short report on number of alignments per reference sequence."
    out_dot_map: "is file name for the output MAQ map file."
    in_dot_list: "is a list of reference sequence headers to be selected. This file servers to specify\\nreference sequences to be selected for conversion to the MAQ map format and also allows\\ntranslation of the header sequence. Each line in the file has format:\\n<refheader> <tab> <replacement header>\\nAny reference sequences not listed in this file will not be converted to MAQ map file.\\nUse '-' rather than a filename to specify that all sequences are to be selected and converted."
    in_dot_novo: "is the Novoalign report file to be converted. Use '-' to specify that the report is to be read from stdin"
  }
  output {
    File out_stdout = stdout()
  }
}