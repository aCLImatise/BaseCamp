version 1.0

task MafChoppy {
  input {
    Int? length
  }
  command <<<
    maf_chop_py \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""}
  >>>
  parameter_meta {
    length: ""
  }
  output {
    File out_stdout = stdout()
  }
}