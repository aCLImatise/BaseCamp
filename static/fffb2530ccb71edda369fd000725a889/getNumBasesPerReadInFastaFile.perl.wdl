version 1.0

task GetNumBasesPerReadInFastaFileperl {
  input {
    String zcat
    File? file
  }
  command <<<
    getNumBasesPerReadInFastaFile_perl \
      ~{zcat} \
      ~{file}
  >>>
  parameter_meta {
    zcat: ""
    file: ""
  }
  output {
    File out_stdout = stdout()
  }
}