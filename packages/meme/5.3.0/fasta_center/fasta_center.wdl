version 1.0

task Fastacenter {
  input {
    Boolean? dna
    Boolean? protein
    Boolean? rna
    File? alph
    Int? len
    File? flank
    File? reject
    String sequence_dot
  }
  command <<<
    fasta_center \
      ~{sequence_dot} \
      ~{if (dna) then "-dna" else ""} \
      ~{if (protein) then "-protein" else ""} \
      ~{if (rna) then "-rna" else ""} \
      ~{if defined(alph) then ("-alph " +  '"' + alph + '"') else ""} \
      ~{if defined(len) then ("-len " +  '"' + len + '"') else ""} \
      ~{if defined(flank) then ("-flank " +  '"' + flank + '"') else ""} \
      ~{if defined(reject) then ("-reject " +  '"' + reject + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0"
  }
  parameter_meta {
    dna: "the sequences use the DNA alphabet"
    protein: "the sequences use the protein alphabet"
    rna: "the sequences use the RNA alphabet"
    alph: "file with the alphabet definition"
    len: "length of sequences to output; default: 100"
    flank: "output flanking sequences to <file>"
    reject: "output rejected sequences to <file>"
    sequence_dot: "When an alphabet is specified the sequences are validated and"
  }
  output {
    File out_stdout = stdout()
    File out_flank = "${in_flank}"
    File out_reject = "${in_reject}"
  }
}