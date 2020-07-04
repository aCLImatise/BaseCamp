version 1.0

task AgatSpFixFusion.pl {
  input {
    Boolean? gff
    String? fast_a
    String? codon
    String? threshold
    String? stranded
    String? verbose
    Boolean? _output_
  }
  command <<<
    agat_sp_fix_fusion.pl \
      ~{true="-gff" false="" gff} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(codon) then ("--codon " +  '"' + codon + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(stranded) then ("--stranded " +  '"' + stranded + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{true="-o" false="" _output_}
  >>>
  parameter_meta {
    gff: "Input GTF/GFF file."
    fast_a: "Input fasta file."
    codon: "Codon table to use. [default 1]"
    threshold: "This is the minimum length of new protein predicted that will be taken in account. By default this value is 100 AA."
    stranded: "By default we predict protein in UTR3 and UTR5 and in both direction. The fusion assumed can be between gene in same direction and in opposite direction. If RNAseq data used during the annotation was stranded, only fusion of close genes oriented in same direction are expected. In that case this option should be activated. When activated, we will try to predict protein in UTR3 and UTR5 only in the same orientation than the gene investigated."
    verbose: "Output verbose information."
    _output_: ", --output , --out or --outfile Output GFF file. If no output file is specified, the output will be written to STDOUT."
  }
}