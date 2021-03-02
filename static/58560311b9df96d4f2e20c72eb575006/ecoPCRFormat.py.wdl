version 1.0

task EcoPCRFormatpy {
  input {
    Boolean? embl
    Boolean? fast_a
    Boolean? genbank
    Boolean? name
    Boolean? taxonomy
  }
  command <<<
    ecoPCRFormat_py \
      ~{if (embl) then "--embl" else ""} \
      ~{if (fast_a) then "--fasta" else ""} \
      ~{if (genbank) then "--genbank" else ""} \
      ~{if (name) then "--name" else ""} \
      ~{if (taxonomy) then "--taxonomy" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    embl: ":[E]mbl format"
    fast_a: ":[F]asta format"
    genbank: ":[G]enbank format"
    name: ":[N]ame of the new database created"
    taxonomy: ":[T]axonomy - path to the taxonomy database\\n:bcp-like dump from GenBank taxonomy database."
  }
  output {
    File out_stdout = stdout()
  }
}