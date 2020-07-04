version 1.0

task StagMerge.pl {
  input {
    String stag_merge_do_tpl
  }
  command <<<
    stag-merge.pl \
      ~{stag_merge_do_tpl}
  >>>
  parameter_meta {
    stag_merge_do_tpl: "-xml file1.xml file2.xml"
  }
}