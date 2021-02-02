version 1.0

task NibFrag {
  input {
    Boolean? masked
    Boolean? hard_masked
    Boolean? upper
    String? name
    String? db_header
    String? tba_header
    File file_dot_nib
    String start
    String end
    String strand
  }
  command <<<
    nibFrag \
      ~{file_dot_nib} \
      ~{start} \
      ~{end} \
      ~{strand} \
      ~{if (masked) then "-masked" else ""} \
      ~{if (hard_masked) then "-hardMasked" else ""} \
      ~{if (upper) then "-upper" else ""} \
      ~{if defined(name) then ("-name " +  '"' + name + '"') else ""} \
      ~{if defined(db_header) then ("-dbHeader " +  '"' + db_header + '"') else ""} \
      ~{if defined(tba_header) then ("-tbaHeader " +  '"' + tba_header + '"') else ""}
  >>>
  parameter_meta {
    masked: "Use lower-case characters for bases meant to be masked out."
    hard_masked: "Use upper-case for not masked-out, and 'N' characters for masked-out bases."
    upper: "Use upper-case characters for all bases."
    name: "Use given name after '>' in output sequence."
    db_header: "Add full database info to the header, with or without -name option."
    tba_header: "Format header for compatibility with tba, takes database name as argument."
    file_dot_nib: ""
    start: ""
    end: ""
    strand: ""
  }
  output {
    File out_stdout = stdout()
  }
}