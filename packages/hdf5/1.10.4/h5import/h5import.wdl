version 1.0

task H5import {
  input {
    Boolean? configfileevery_input_file
    Boolean? outfilename_hdf_output
    Int? dimension_implies_unlimited
  }
  command <<<
    h5import \
      ~{if (configfileevery_input_file) then "-c" else ""} \
      ~{if (outfilename_hdf_output) then "-o" else ""} \
      ~{if defined(dimension_implies_unlimited) then ("-1 " +  '"' + dimension_implies_unlimited + '"') else ""}
  >>>
  parameter_meta {
    configfileevery_input_file: "[config] <configfile>:\\nEvery input file should be associated with a\\nconfiguration file and this is done by the -c option.\\n<configfile> is the name of the configuration file.\\n(See Section \\\"CONFIGURATION FILE\\\")"
    outfilename_hdf_output: "[utfile] <outfile>:\\nName of the HDF5 output file. Data from one or more\\ninput files are stored as one or more data sets in\\n<outfile>. The output file may be an existing file or\\nit maybe new in which case it will be created."
    dimension_implies_unlimited: "any dimension implies UNLIMITED"
  }
  output {
    File out_stdout = stdout()
  }
}