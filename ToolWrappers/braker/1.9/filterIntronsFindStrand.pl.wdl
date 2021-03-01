version 1.0

task FilterIntronsFindStrandpl {
  input {
    String? allowed
    Boolean? score
    String? genome
    String? introns
    String genome_dot_fa
    String introns_dot_gff
  }
  command <<<
    filterIntronsFindStrand_pl \
      ~{genome_dot_fa} \
      ~{introns_dot_gff} \
      ~{if defined(allowed) then ("--allowed " +  '"' + allowed + '"') else ""} \
      ~{if (score) then "--score" else ""} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(introns) then ("--introns " +  '"' + introns + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    allowed: ",gcaag,atac       Allowed acceptor and donor splice site types"
    score: "Set score to 'mult' entry or '1', if the last column does not contain a 'mult' entry"
    genome: "see above"
    introns: "see above"
    genome_dot_fa: "DNA file in fasta format"
    introns_dot_gff: "corresponding introns file in gff format"
  }
  output {
    File out_stdout = stdout()
  }
}