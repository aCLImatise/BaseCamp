version 1.0

task AgatConvertSpGff2tsvpl {
  input {
    File? gff
    String? ct
    File? merge_loci
    File? outfile
    Int agat_convert_sp_gfftwotsvdotpl
  }
  command <<<
    agat_convert_sp_gff2tsv_pl \
      ~{agat_convert_sp_gfftwotsvdotpl} \
      ~{if defined(gff) then ("--gff " +  '"' + gff + '"') else ""} \
      ~{if defined(ct) then ("--ct " +  '"' + ct + '"') else ""} \
      ~{if defined(merge_loci) then ("--merge_loci " +  '"' + merge_loci + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/agat:0.5.1--pl526r35_0"
  }
  parameter_meta {
    gff: "Input GTF/GFF file."
    ct: "When the features doesn't have Parent/ID relationships, the\\nparser will try to group features using a common/shared\\nattribute (i.e. a locus tag.). By default locus_tag and gene_id.\\nYou can provide another specific common/shared attribute using\\nthis option."
    merge_loci: "Merge loci parameter, default deactivated. You turn on the\\nparameter if you want to merge loci into one locus when they\\noverlap. (at CDS level for mRNA, at exon level for other level2\\nfeatures. Strand has to be the same). Prokaryote can have\\noverlaping loci so it should not use it for prokaryote\\nannotation. In eukaryote, loci rarely overlap. Overlaps could be\\ndue to error in the file, mRNA can be merged under the same\\nparent gene if you acticate the option."
    outfile: "Output GFF file. If no output file is specified, the output will\\nbe written to STDOUT."
    agat_convert_sp_gfftwotsvdotpl: "Description:"
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
  }
}