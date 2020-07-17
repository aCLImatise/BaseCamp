version 1.0

task DimspyUnzip {
  input {
    String? file
    String? directory_to_write
  }
  command <<<
    dimspy unzip \
      ~{if defined(file) then ("--input " +  '"' + file + '"') else ""} \
      ~{if defined(directory_to_write) then ("--output " +  '"' + directory_to_write + '"') else ""}
  >>>
  parameter_meta {
    file: "file[.zip]"
    directory_to_write: "Directory to write to."
  }
}