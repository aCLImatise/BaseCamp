version 1.0

task AgatSpFixFusionpl {
  input {
    Boolean? gff
    File? fast_a
    Int? codon
    Int? threshold
    Int? stranded
    String? verbose
    File? _output_
    String agat_sp_fix_fusion_do_tpl
  }
  command <<<
    agat_sp_fix_fusion_pl \
      ~{agat_sp_fix_fusion_do_tpl} \
      ~{if (gff) then "-gff" else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(codon) then ("--codon " +  '"' + codon + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(stranded) then ("--stranded " +  '"' + stranded + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{if (_output_) then "-o" else ""}
  >>>
  parameter_meta {
    gff: "Input GTF/GFF file."
    fast_a: "Input fasta file."
    codon: "Codon table to use. [default 1]"
    threshold: "This is the minimum length of new protein predicted that will be\\ntaken in account. By default this value is 100 AA."
    stranded: "By default we predict protein in UTR3 and UTR5 and in both\\ndirection. The fusion assumed can be between gene in same\\ndirection and in opposite direction. If RNAseq data used during\\nthe annotation was stranded, only fusion of close genes oriented\\nin same direction are expected. In that case this option should\\nbe activated. When activated, we will try to predict protein in\\nUTR3 and UTR5 only in the same orientation than the gene\\ninvestigated."
    verbose: "Output verbose information."
    _output_: ", --output , --out or --outfile\\nOutput GFF file. If no output file is specified, the output will\\nbe written to STDOUT."
    agat_sp_fix_fusion_do_tpl: "Description:"
  }
  output {
    File out_stdout = stdout()
    File out__output_ = "${in__output_}"
  }
}