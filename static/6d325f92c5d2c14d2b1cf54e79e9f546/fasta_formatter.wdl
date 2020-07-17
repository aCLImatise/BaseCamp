version 1.0

task FastaFormatter {
  input {
    String? i
    String? o
    String? w
    Boolean? t
    Boolean? e
    String my_id
  }
  command <<<
    fasta_formatter \
      ~{my_id} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(w) then ("-w " +  '"' + w + '"') else ""} \
      ~{true="-t" false="" t} \
      ~{true="-e" false="" e}
  >>>
  parameter_meta {
    i: ""
    o: ""
    w: ""
    t: ""
    e: ""
    my_id: "AAAAAGGGGGCCCCCTTTTAGCTN"
  }
}