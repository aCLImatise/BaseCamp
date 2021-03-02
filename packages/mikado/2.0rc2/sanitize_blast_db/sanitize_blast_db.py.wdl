version 1.0

task SanitizeBlastDbpy {
  input {
    Int? min_length
    String? out
  }
  command <<<
    sanitize_blast_db_py \
      ~{if defined(min_length) then ("--min-length " +  '"' + min_length + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""}
  >>>
  parameter_meta {
    min_length: ""
    out: ""
  }
  output {
    File out_stdout = stdout()
  }
}