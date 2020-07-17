version 1.0

task Nproc {
  input {
    Boolean? all
    String? ignore
    String? option
  }
  command <<<
    nproc \
      ~{option} \
      ~{true="--all" false="" all} \
      ~{if defined(ignore) then ("--ignore " +  '"' + ignore + '"') else ""}
  >>>
  parameter_meta {
    all: "print the number of installed processors"
    ignore: "if possible, exclude N processing units"
    option: ""
  }
}