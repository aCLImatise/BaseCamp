version 1.0

task Merge2Dbedpl {
  input {
    Boolean? res
    Boolean? loop
    Boolean? tad
    File? prefix
  }
  command <<<
    merge2Dbed_pl \
      ~{if (res) then "-res" else ""} \
      ~{if (loop) then "-loop" else ""} \
      ~{if (tad) then "-tad" else ""} \
      ~{if defined(prefix) then ("-prefix " +  '"' + prefix + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    res: "<#> (maximum distance between endpoints to merge, default: 15000)\\nUsually for loops -res should be set to the window/superRes size, for TADs 2x window/superRes"
    loop: "(treat 2D bed input files as loops, default)"
    tad: "(treat 2D bed input files as TADs)"
    prefix: "(output venn diagram overlaps to separate files)"
  }
  output {
    File out_stdout = stdout()
  }
}