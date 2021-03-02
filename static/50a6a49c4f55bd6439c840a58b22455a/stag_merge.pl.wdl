version 1.0

task Stagmergepl {
  input {
    String stag_merge_do_tpl
  }
  command <<<
    stag_merge_pl \
      ~{stag_merge_do_tpl}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    stag_merge_do_tpl: "-xml file1.xml file2.xml"
  }
  output {
    File out_stdout = stdout()
  }
}