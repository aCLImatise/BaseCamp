version 1.0

task RenameFromFastash {
  input {
    File? file_rename_file
  }
  command <<<
    rename_from_fasta_sh \
      ~{if defined(file_rename_file) then ("-i " +  '"' + file_rename_file + '"') else ""}
  >>>
  parameter_meta {
    file_rename_file: "file to rename\\n-1 original fata file whose names will be finally printed\\n-2 new fata file whose names will be replaced\\n-o output directory (optional). By default the file is replaced in the same location\\n-f output file name (\\\".rename\\\" will be added at the end)\\n-d dictionary file to be used if fasta files are not supplied\\n-v version\\n-h display usage message"
  }
  output {
    File out_stdout = stdout()
    File out_file_rename_file = "${in_file_rename_file}"
  }
}