version 1.0

task FilterIntronsFindStrand.pl {
  input {
    String? allowed
    Boolean? score
    String? genome
    Int? introns
    String genome_dot_fa
    Int introns_dot_gff
  }
  command <<<
    filterIntronsFindStrand.pl \
      ~{genome_dot_fa} \
      ~{introns_dot_gff} \
      ~{if defined(allowed) then ("--allowed " +  '"' + allowed + '"') else ""} \
      ~{true="--score" false="" score} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(introns) then ("--introns " +  '"' + introns + '"') else ""}
  >>>
  parameter_meta {
    allowed: ",gcaag,atac       Allowed acceptor and donor splice site types"
    score: "Set score to 'mult' entry or '1', if the last column does not contain a 'mult' entry"
    genome: "see above"
    introns: "see above"
    genome_dot_fa: "DNA file in fasta format"
    introns_dot_gff: "corresponding introns file in gff format"
  }
}