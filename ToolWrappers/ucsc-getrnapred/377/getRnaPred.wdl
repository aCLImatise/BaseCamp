version 1.0

task GetRnaPred {
  input {
    Boolean? weird
    Boolean? cds_upper
    Boolean? cds_only
    File? cds_out
    Boolean? keep_masking
    String? psl_out
    String? suffix
    Boolean? peptides
    Boolean? exon_indices
    Int? maxsize
    File? genome_seqs
    Boolean? include_coords
    Boolean? gene_pred_ext
    String acc
  }
  command <<<
    getRnaPred \
      ~{acc} \
      ~{if (weird) then "-weird" else ""} \
      ~{if (cds_upper) then "-cdsUpper" else ""} \
      ~{if (cds_only) then "-cdsOnly" else ""} \
      ~{if defined(cds_out) then ("-cdsOut " +  '"' + cds_out + '"') else ""} \
      ~{if (keep_masking) then "-keepMasking" else ""} \
      ~{if defined(psl_out) then ("-pslOut " +  '"' + psl_out + '"') else ""} \
      ~{if defined(suffix) then ("-suffix " +  '"' + suffix + '"') else ""} \
      ~{if (peptides) then "-peptides" else ""} \
      ~{if (exon_indices) then "-exonIndices" else ""} \
      ~{if defined(maxsize) then ("-maxSize " +  '"' + maxsize + '"') else ""} \
      ~{if defined(genome_seqs) then ("-genomeSeqs " +  '"' + genome_seqs + '"') else ""} \
      ~{if (include_coords) then "-includeCoords" else ""} \
      ~{if (gene_pred_ext) then "-genePredExt" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    weird: "- only get ones with weird splice sites"
    cds_upper: "- output CDS in upper case"
    cds_only: "- only output CDS"
    cds_out: "- write CDS to this tab-separated file, in the form"
    keep_masking: "- un/masked in upper/lower case."
    psl_out: "- output a PSLs for the virtual mRNAs.  Allows virtual\\nmRNA to be analyzed by tools that work on PSLs"
    suffix: "- append suffix to each id to avoid confusion with mRNAs\\nuse to define the genes."
    peptides: "- out the translation of the CDS to a peptide sequence.\\nThe newer program genePredToProt maybe produce better results in cases\\nwere there are frame-shifting indels in the CDS."
    exon_indices: "- output indices of exon boundaries after sequence name,\\ne.g., \\\"103 243 290\\\" says positions 1-103 are from the first exon,\\npositions 104-243 are from the second exon, etc."
    maxsize: "- output a maximum of size characters.  Useful when\\ntesting gene predictions by RT-PCR."
    genome_seqs: "- get genome sequences from the specified nib directory\\nor 2bit file instead of going though the path found in chromInfo."
    include_coords: "- include the genomic coordinates as a comment in the\\nfasta header.  This is necessary when there are multiple genePreds\\nwith the same name."
    gene_pred_ext: "- (for use with -peptides) use extended genePred format,\\nand consider frame information when translating (Warning: only\\nconsiders offset at 5' end, not frameshifts between blocks)\\n"
    acc: "start  end"
  }
  output {
    File out_stdout = stdout()
  }
}