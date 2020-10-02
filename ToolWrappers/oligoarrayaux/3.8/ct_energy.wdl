version 1.0

task Ctenergy {
  input {
    Boolean? no_dangle
    File? file
  }
  command <<<
    ct_energy \
      ~{file} \
      ~{if (no_dangle) then "--nodangle" else ""}
  >>>
  parameter_meta {
    no_dangle: "--simple\\n--Vienna\\n--coaxial"
    file: ""
  }
  output {
    File out_stdout = stdout()
  }
}