version 1.0

task H5unjam {
  input {
    File? specifies_hdf_input
    Int? specifies_output_hdf_file
    File? specifies_output_file_containing
    Boolean? delete
    Boolean? prints_hdf_version
  }
  command <<<
    h5unjam \
      ~{if defined(specifies_hdf_input) then ("-i " +  '"' + specifies_hdf_input + '"') else ""} \
      ~{if defined(specifies_output_hdf_file) then ("-o " +  '"' + specifies_output_hdf_file + '"') else ""} \
      ~{if defined(specifies_output_file_containing) then ("-u " +  '"' + specifies_output_file_containing + '"') else ""} \
      ~{if (delete) then "--delete" else ""} \
      ~{if (prints_hdf_version) then "-V" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    specifies_hdf_input: "Specifies the HDF5 as input.  If the input HDF5 file\\ncontains no user block, exit with an error message."
    specifies_output_hdf_file: "Specifies output HDF5 file without a user block.\\nIf not specified, the user block will be removed from the\\ninput HDF5 file."
    specifies_output_file_containing: "Specifies the output file containing the data from the\\nuser block.\\nCannot be used with --delete option."
    delete: "Remove the user block from the input HDF5 file. The content\\nof the user block is discarded.\\nCannot be used with the -u option."
    prints_hdf_version: "Prints the HDF5 library version and exits."
  }
  output {
    File out_stdout = stdout()
    File out_specifies_output_file_containing = "${in_specifies_output_file_containing}"
  }
}