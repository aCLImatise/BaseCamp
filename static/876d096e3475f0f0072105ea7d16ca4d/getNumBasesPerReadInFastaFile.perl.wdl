version 1.0

task GetNumBasesPerReadInFastaFileperl {
  input {
    String zcat
    File? var_file
  }
  command <<<
    getNumBasesPerReadInFastaFile_perl \
      ~{zcat} \
      ~{var_file}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    zcat: ""
    var_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}