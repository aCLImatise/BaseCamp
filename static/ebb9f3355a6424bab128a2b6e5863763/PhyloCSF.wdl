version 1.0

task PhyloCSF {
  input {
    String? strategy
    Boolean? files
    Boolean? remove_ref_gaps
    Int? species
    Boolean? fone
    Int? orf
    Int? min_codons
    Boolean? all_scores
    Boolean? bls
    Boolean? anc_comp
    Boolean? dna
    Boolean? aa
    Boolean? debug
    Int max
  }
  command <<<
    PhyloCSF \
      ~{max} \
      ~{if defined(strategy) then ("--strategy " +  '"' + strategy + '"') else ""} \
      ~{if (files) then "--files" else ""} \
      ~{if (remove_ref_gaps) then "--removeRefGaps" else ""} \
      ~{if defined(species) then ("--species " +  '"' + species + '"') else ""} \
      ~{if (fone) then "-f1" else ""} \
      ~{if defined(orf) then ("--orf " +  '"' + orf + '"') else ""} \
      ~{if defined(min_codons) then ("--minCodons " +  '"' + min_codons + '"') else ""} \
      ~{if (all_scores) then "--allScores" else ""} \
      ~{if (bls) then "--bls" else ""} \
      ~{if (anc_comp) then "--ancComp" else ""} \
      ~{if (dna) then "--dna" else ""} \
      ~{if (aa) then "--aa" else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    strategy: "|fixed|omega\\nevaluation strategy (default mle)"
    files: "input list(s) of alignment filenames instead of\\nindividual alignment(s)"
    remove_ref_gaps: "automatically remove any alignment columns that are\\ngapped in the reference sequence (nucleotide columns\\nare removed individually; be careful about reading\\nframe). By default, it is an error for the reference\\nsequence to contain gaps"
    species: ",Species2,...\\nhint that only this subset of species will be used in\\nany of the alignments; this does not change the\\ncalculation mathematically, but can speed it up"
    fone: "|3|6, --frames=1|3|6\\nhow many reading frames to search (default 1)"
    orf: "|ATGStop|StopStop|StopStop3|ToFirstStop|FromLastStop|ToOrFromStop\\nsearch for ORFs (default AsIs)"
    min_codons: "minimum ORF length for searching over ORFs (default 25\\ncodons)"
    all_scores: "report scores of all regions evaluated, not just the"
    bls: "include alignment branch length score (BLS) for the\\nreported region in output"
    anc_comp: "include ancestral sequence composition score in output"
    dna: "include DNA sequence in output, the part of the\\nreference (first) sequence whose score is reported"
    aa: "include amino acid translation in output"
    debug: "print extra information about parameters and errors"
    max: "-pINT               search frames/ORFs using up to p parallel subprocesses"
  }
  output {
    File out_stdout = stdout()
  }
}