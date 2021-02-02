version 1.0

task GenometreetkStrip {
  input {
    Boolean? silent
  }
  command <<<
    genometreetk strip \
      ~{if (silent) then "--silent" else ""}
  >>>
  parameter_meta {
    silent: "suppress output"
  }
  output {
    File out_stdout = stdout()
  }
}