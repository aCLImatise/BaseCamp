version 1.0

task SixgillBuildFastqfiles {
  input {
    String? minlength
    String six_gill_build
  }
  command <<<
    sixgill_build fastqfiles \
      ~{six_gill_build} \
      ~{if defined(minlength) then ("--minlength " +  '"' + minlength + '"') else ""}
  >>>
  parameter_meta {
    minlength: ""
    six_gill_build: ""
  }
  output {
    File out_stdout = stdout()
  }
}