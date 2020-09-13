version 1.0

task AgatConvertSpGff2gtfpl {
  input {
    File? gff
    Float? gtf_version
    String? relax
    File? _output_
    String title
    String usage
    String args
    Int agat_convert_sp_gfftwogtfdotpl
  }
  command <<<
    agat_convert_sp_gff2gtf_pl \
      ~{title} \
      ~{usage} \
      ~{args} \
      ~{agat_convert_sp_gfftwogtfdotpl} \
      ~{if defined(gff) then ("--gff " +  '"' + gff + '"') else ""} \
      ~{if defined(gtf_version) then ("--gtf_version " +  '"' + gtf_version + '"') else ""} \
      ~{if defined(relax) then ("--relax " +  '"' + relax + '"') else ""} \
      ~{if (_output_) then "-o" else ""}
  >>>
  parameter_meta {
    gff: "Input GFF file that will be read"
    gtf_version: "of the GTF output. Default 3 (for GTF3)\\nGTF3 (9 feature types accepted): gene, transcript, exon, CDS,\\nSelenocysteine, start_codon, stop_codon, three_prime_utr and\\nfive_prime_utr\\nGTF2.5 (8 feature types accepted): gene, transcript, exon, CDS,\\nUTR, start_codon, stop_codon, Selenocysteine\\nGTF2.2 (9 feature types accepted): CDS, start_codon, stop_codon,\\n5UTR, 3UTR, inter, inter_CNS, intron_CNS and exon\\nGTF2.1 (6 feature types accepted): CDS, start_codon, stop_codon,\\nexon, 5UTR, 3UTR\\nGTF2 (4 feature types accepted): CDS, start_codon, stop_codon,\\nexon\\nGTF1 (5 feature types accepted): CDS, start_codon, stop_codon,\\nexon, intron"
    relax: "option avoid to apply strict GTF format specification. All\\nfeature type will be kept. No modification e.g. mRNA to\\ntranscript. No filtering i.e. feature type not accepted by GTF\\nformat are kept. gene_id and transcript_id attributes will be\\nadded, and the attributes will follow the GTF formating."
    _output_: ", --output , --out , --outfile or --gtf\\nOutput GTF file. If no output file is specified, the output will\\nbe written to STDOUT."
    title: ": _gff25_string"
    usage: ": $gffstr = $gffio->_gff2_string"
    args: ": A Bio::SeqFeatureI implementing object to be GFF2.5-stringified"
    agat_convert_sp_gfftwogtfdotpl: "Description:"
  }
  output {
    File out_stdout = stdout()
    File out__output_ = "${in__output_}"
  }
}