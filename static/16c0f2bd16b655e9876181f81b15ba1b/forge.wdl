version 1.0

task Forge {
  input {
    File? boost
    String ann
    String dna
  }
  command <<<
    forge \
      ~{ann} \
      ~{dna} \
      ~{if defined(boost) then ("-boost " +  '"' + boost + '"') else ""}
  >>>
  parameter_meta {
    boost: "(file of ID <int>)"
    ann: ""
    dna: ""
  }
}