version 1.0

task Hart2memebkg {
  input {
    Int hart_two_meme_bkg
    String copyright
  }
  command <<<
    hart2meme_bkg \
      ~{hart_two_meme_bkg} \
      ~{copyright}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    hart_two_meme_bkg: "Convert a Hartemink style conditional probability file into"
    copyright: "(2008) The University of Queensland"
  }
  output {
    File out_stdout = stdout()
  }
}