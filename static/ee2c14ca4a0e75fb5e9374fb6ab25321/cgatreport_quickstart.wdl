version 1.0

task CgatreportQuickstart {
  input {
    String? dest
  }
  command <<<
    cgatreport-quickstart \
      ~{if defined(dest) then ("--dest " +  '"' + dest + '"') else ""}
  >>>
  parameter_meta {
    dest: "destination directory."
  }
}