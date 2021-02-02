version 1.0

task H5unjam {
  input {
    File? specifies_hdf_input
    Int? specifies_hdf_file
    File? specifies_file_used
    Boolean? delete
    Boolean? prints_library_version
  }
  command <<<
    h5unjam \
      ~{if defined(specifies_hdf_input) then ("-i " +  '"' + specifies_hdf_input + '"') else ""} \
      ~{if defined(specifies_hdf_file) then ("-o " +  '"' + specifies_hdf_file + '"') else ""} \
      ~{if defined(specifies_file_used) then ("-u " +  '"' + specifies_file_used + '"') else ""} \
      ~{if (delete) then "--delete" else ""} \
      ~{if (prints_library_version) then "-V" else ""}
  >>>
  parameter_meta {
    specifies_hdf_input: "Specifies the HDF5 as input.  If the input HDF5 file\\ncontains no user block, exit with an error message."
    specifies_hdf_file: "Specifies output HDF5 file without a user block.\\nIf not specified, the user block will be removed from the\\ninput HDF5 file."
    specifies_file_used: "Specifies the output file containing the data from the\\nuser block.\\nCannot be used with --delete option."
    delete: "Remove the user block from the input HDF5 file. The content\\nof the user block is discarded.\\nCannot be used with the -u option."
    prints_library_version: "Prints the HDF5 library version and exits."
  }
  output {
    File out_stdout = stdout()
    File out_specifies_file_used = "${in_specifies_file_used}"
  }
}