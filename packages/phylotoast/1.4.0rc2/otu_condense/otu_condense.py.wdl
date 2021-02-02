version 1.0

task OtuCondensepy {
  input {
    File? p
    String? i
  }
  command <<<
    otu_condense_py \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  parameter_meta {
    p: ""
    i: ""
  }
  output {
    File out_stdout = stdout()
    File out_p = "${in_p}"
  }
}