version 1.0

task PrintScaff {
  input {
    String? l
  }
  command <<<
    printScaff \
      ~{if defined(l) then ("-l " +  '"' + l + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    l: "[-dot -page -plot -unused -phys -oo -sum] [-detail]"
  }
  output {
    File out_stdout = stdout()
  }
}