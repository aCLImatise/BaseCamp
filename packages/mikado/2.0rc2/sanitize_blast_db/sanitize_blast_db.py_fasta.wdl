version 1.0

task SanitizeBlastDbpyFasta {
  input {
    String? o
    String? ml
    String? fast_a
  }
  command <<<
    sanitize_blast_db_py fasta \
      ~{fast_a} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(ml) then ("-ml " +  '"' + ml + '"') else ""}
  >>>
  parameter_meta {
    o: ""
    ml: ""
    fast_a: ""
  }
  output {
    File out_stdout = stdout()
  }
}