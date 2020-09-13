version 1.0

task UmisSbFilter {
  input {
    File? bc
    Int? cores
    Int? nedit
    String files_dot
  }
  command <<<
    umis sb_filter \
      ~{files_dot} \
      ~{if defined(bc) then ("--bc " +  '"' + bc + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{if defined(nedit) then ("--nedit " +  '"' + nedit + '"') else ""}
  >>>
  parameter_meta {
    bc: ""
    cores: ""
    nedit: ""
    files_dot: "Options:"
  }
  output {
    File out_stdout = stdout()
  }
}