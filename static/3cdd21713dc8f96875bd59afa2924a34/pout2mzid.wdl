version 1.0

task Pout2mzid {
  input {
    Boolean? percolator_out_xml
    Boolean? mzidentml_input_file
    Boolean? sets_mzidentml_directory
    Boolean? default_output_stdout
    Boolean? sets_output_directory
    Boolean? file_containing_list
    Boolean? only_adds_results
    Boolean? sets_validation_xml
    Boolean? sets_should_terminate
  }
  command <<<
    pout2mzid \
      ~{true="-p" false="" percolator_out_xml} \
      ~{true="-m" false="" mzidentml_input_file} \
      ~{true="-i" false="" sets_mzidentml_directory} \
      ~{true="-c" false="" default_output_stdout} \
      ~{true="-o" false="" sets_output_directory} \
      ~{true="-f" false="" file_containing_list} \
      ~{true="-d" false="" only_adds_results} \
      ~{true="-v" false="" sets_validation_xml} \
      ~{true="-w" false="" sets_should_terminate}
  >>>
  parameter_meta {
    percolator_out_xml: "[ --percolatorfile ] [Value] Percolator Out XML result file"
    mzidentml_input_file: "[ --mzidfile ] [Value]       MzIdentML input file"
    sets_mzidentml_directory: "[ --inputdir ] [Value]       Sets the mzIdentML input directory. All  mzIdentML inputfiles must be in that  directory"
    default_output_stdout: "[ --changeoutput ] [Value]   Change the outputfile to original  filename+[Value]+.mzid. DEFAULT: output to stdout"
    sets_output_directory: "[ --outputdir ] [Value]      Sets the output directory if none exist, it  will be created."
    file_containing_list: "[ --filesmzid ] [Value]      File containing a list of mzIdentML filenames"
    only_adds_results: "[ --decoy ]                  Only adds results to entries with decoy set  to true. DEFAULT: false"
    sets_validation_xml: "[ --validate ]               Sets that validation of XML schema should not be performed. Faster parsing."
    sets_should_terminate: "[ --warning ]                Sets that upon warning the software should  terminate."
  }
}