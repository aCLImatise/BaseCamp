version 1.0

task AgatConvertSpGff2tsv.pl {
  input {
    String? gff
    String? ct
    String? merge_loci
    Boolean? _output_
  }
  command <<<
    agat_convert_sp_gff2tsv.pl \
      ~{if defined(gff) then ("--gff " +  '"' + gff + '"') else ""} \
      ~{if defined(ct) then ("--ct " +  '"' + ct + '"') else ""} \
      ~{if defined(merge_loci) then ("--merge_loci " +  '"' + merge_loci + '"') else ""} \
      ~{true="-o" false="" _output_}
  >>>
  parameter_meta {
    gff: "Input GTF/GFF file."
    ct: "When the features doesn't have Parent/ID relationships, the parser will try to group features using a common/shared attribute (i.e. a locus tag.). By default locus_tag and gene_id. You can provide another specific common/shared attribute using this option."
    merge_loci: "Merge loci parameter, default deactivated. You turn on the parameter if you want to merge loci into one locus when they overlap. (at CDS level for mRNA, at exon level for other level2 features. Strand has to be the same). Prokaryote can have overlaping loci so it should not use it for prokaryote annotation. In eukaryote, loci rarely overlap. Overlaps could be due to error in the file, mRNA can be merged under the same parent gene if you acticate the option."
    _output_: ", --output , --out or --outfile Output GFF file. If no output file is specified, the output will be written to STDOUT."
  }
}