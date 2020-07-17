version 1.0

task FinalReport.py {
  input {
    File? file
  }
  command <<<
    finalReport.py \
      ~{if defined(file) then ("--file " +  '"' + file + '"') else ""}
  >>>
  parameter_meta {
    file: "configuration file"
  }
}