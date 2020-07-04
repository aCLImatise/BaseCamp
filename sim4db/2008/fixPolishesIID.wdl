version 1.0

task FixPolishesIID {
  input {
    String? read_cdna_deflines
    String? read_genomic_deflines
    Boolean? gff_three
    String var_3
    String var_4
  }
  command <<<
    fixPolishesIID \
      ~{var_3} \
      ~{var_4} \
      ~{if defined(read_cdna_deflines) then ("-c " +  '"' + read_cdna_deflines + '"') else ""} \
      ~{if defined(read_genomic_deflines) then ("-g " +  '"' + read_genomic_deflines + '"') else ""} \
      ~{true="-gff3" false="" gff_three}
  >>>
  parameter_meta {
    read_cdna_deflines: "Read cDNA deflines from c.fasta"
    read_genomic_deflines: "Read genomic deflines from g.fasta"
    gff_three: "Write output as GFF3"
    var_3: ""
    var_4: ""
  }
}