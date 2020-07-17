version 1.0

task StagMogrify.pl {
  input {
    String stag_mogrify
  }
  command <<<
    stag-mogrify.pl \
      ~{stag_mogrify}
  >>>
  parameter_meta {
    stag_mogrify: "-w itext file1.xml file2.xml"
  }
}