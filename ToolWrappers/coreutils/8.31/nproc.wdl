version 1.0

task Nproc {
  input {
    Boolean? all
    String? ignore
  }
  command <<<
    nproc \
      ~{if (all) then "--all" else ""} \
      ~{if defined(ignore) then ("--ignore " +  '"' + ignore + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    all: "print the number of installed processors"
    ignore: "if possible, exclude N processing units"
  }
  output {
    File out_stdout = stdout()
  }
}