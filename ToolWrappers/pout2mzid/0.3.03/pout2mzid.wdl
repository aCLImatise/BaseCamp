version 1.0

task Pout2mzid {
  input {
    File? percolator_out_xml
    Boolean? mzidentml_input_file
    Boolean? sets_inputfiles_be
    File? change_outputfile_stdout
    Directory? sets_output_directory
    Boolean? file_containing_list
    Boolean? only_adds_results
    Boolean? sets_validation_notbe
    Boolean? sets_warning_software
  }
  command <<<
    pout2mzid \
      ~{if (percolator_out_xml) then "-p" else ""} \
      ~{if (mzidentml_input_file) then "-m" else ""} \
      ~{if (sets_inputfiles_be) then "-i" else ""} \
      ~{if (change_outputfile_stdout) then "-c" else ""} \
      ~{if (sets_output_directory) then "-o" else ""} \
      ~{if (file_containing_list) then "-f" else ""} \
      ~{if (only_adds_results) then "-d" else ""} \
      ~{if (sets_validation_notbe) then "-v" else ""} \
      ~{if (sets_warning_software) then "-w" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    percolator_out_xml: "[ --percolatorfile ] [Value] Percolator Out XML result file"
    mzidentml_input_file: "[ --mzidfile ] [Value]       MzIdentML input file"
    sets_inputfiles_be: "[ --inputdir ] [Value]       Sets the mzIdentML input directory. All\\nmzIdentML inputfiles must be in that\\ndirectory"
    change_outputfile_stdout: "[ --changeoutput ] [Value]   Change the outputfile to original\\nfilename+[Value]+.mzid.\\nDEFAULT: output to stdout"
    sets_output_directory: "[ --outputdir ] [Value]      Sets the output directory if none exist, it\\nwill be created."
    file_containing_list: "[ --filesmzid ] [Value]      File containing a list of mzIdentML filenames"
    only_adds_results: "[ --decoy ]                  Only adds results to entries with decoy set\\nto true. DEFAULT: false"
    sets_validation_notbe: "[ --validate ]               Sets that validation of XML schema should not\\nbe performed. Faster parsing."
    sets_warning_software: "[ --warning ]                Sets that upon warning the software should\\nterminate.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_percolator_out_xml = "${in_percolator_out_xml}"
    File out_change_outputfile_stdout = "${in_change_outputfile_stdout}"
    Directory out_sets_output_directory = "${in_sets_output_directory}"
  }
}