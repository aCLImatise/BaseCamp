version 1.0

task Hmmer2gffAaFile {
  input {
    String? db
    Boolean? c
    Boolean? d
    String? t
    Boolean? o
    Int hmmer_two_gff
    String? output_file
  }
  command <<<
    hmmer2gff aa_file \
      ~{hmmer_two_gff} \
      ~{output_file} \
      ~{if defined(db) then ("-db " +  '"' + db + '"') else ""} \
      ~{if (c) then "-c" else ""} \
      ~{if (d) then "-d" else ""} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""} \
      ~{if (o) then "-o" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    db: ""
    c: ""
    d: ""
    t: ""
    o: ""
    hmmer_two_gff: ""
    output_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}