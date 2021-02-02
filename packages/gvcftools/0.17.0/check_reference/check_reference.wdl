version 1.0

task CheckReference {
  input {
    String? ref
  }
  command <<<
    check_reference \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""}
  >>>
  parameter_meta {
    ref: "samtools reference sequence (required)"
  }
  output {
    File out_stdout = stdout()
  }
}