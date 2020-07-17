version 1.0

task Hmmer2gffOUTPUTFILE {
  input {
    Boolean? o
    String? t
    Boolean? d
    Boolean? c
    String? db
  }
  command <<<
    hmmer2gff OUTPUT_FILE \
      ~{true="-o" false="" o} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""} \
      ~{true="-d" false="" d} \
      ~{true="-c" false="" c} \
      ~{if defined(db) then ("-db " +  '"' + db + '"') else ""}
  >>>
  parameter_meta {
    o: ""
    t: ""
    d: ""
    c: ""
    db: ""
  }
}