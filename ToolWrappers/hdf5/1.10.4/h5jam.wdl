version 1.0

task H5jam {
  input {
    File? specifies_input_file
    File? specifies_file_inserted
    Int? specifies_output_fileif
    Boolean? clobber
    Boolean? prints_hdf_version
  }
  command <<<
    h5jam \
      ~{if defined(specifies_input_file) then ("-i " +  '"' + specifies_input_file + '"') else ""} \
      ~{if defined(specifies_file_inserted) then ("-u " +  '"' + specifies_file_inserted + '"') else ""} \
      ~{if defined(specifies_output_fileif) then ("-o " +  '"' + specifies_output_fileif + '"') else ""} \
      ~{if (clobber) then "--clobber" else ""} \
      ~{if (prints_hdf_version) then "-V" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    specifies_input_file: "Specifies the input HDF5 file."
    specifies_file_inserted: "Specifies the file to be inserted into the user block.\\nCan be any file format except an HDF5 format."
    specifies_output_fileif: "Specifies the output HDF5 file.\\nIf not specified, the user block will be concatenated in\\nplace to the input HDF5 file."
    clobber: "Wipes out any existing user block before concatenating\\nthe given user block.\\nThe size of the new user block will be the larger of;\\n- the size of existing user block in the input HDF5 file\\n- the size of user block required by new input user file\\n(size = 512 x 2N,  N is positive integer.)"
    prints_hdf_version: "Prints the HDF5 library version and exits."
  }
  output {
    File out_stdout = stdout()
  }
}