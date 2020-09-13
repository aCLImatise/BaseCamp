version 1.0

task Cgatreportquickstart {
  input {
    Directory? dest
  }
  command <<<
    cgatreport_quickstart \
      ~{if defined(dest) then ("--dest " +  '"' + dest + '"') else ""}
  >>>
  parameter_meta {
    dest: "destination directory.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}