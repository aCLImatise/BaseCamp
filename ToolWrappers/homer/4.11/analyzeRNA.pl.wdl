version 1.0

task AnalyzeRNApl {
  input {
    Boolean? or
    Directory? list_showtag_counts
    Boolean? rp_km
    Boolean? norm
    Boolean? norm_matrix
    Boolean? no_adj
    Int? count
    Boolean? no_condensing
    Boolean? pc
    Boolean? strand
    File? gene
    Boolean? log
    Boolean? sqrt
    Boolean? tss
    Boolean? start
    Boolean? end
    Boolean? maxlength
    Boolean? pausing
    String rna_vertical_line_repeats
    String genome_version
    String? additional
    String? options_dot_dot_dot
  }
  command <<<
    analyzeRNA_pl \
      ~{rna_vertical_line_repeats} \
      ~{genome_version} \
      ~{additional} \
      ~{options_dot_dot_dot} \
      ~{if (or) then "-or-" else ""} \
      ~{if defined(list_showtag_counts) then ("-d " +  '"' + list_showtag_counts + '"') else ""} \
      ~{if (rp_km) then "-rpkm" else ""} \
      ~{if (norm) then "-norm" else ""} \
      ~{if (norm_matrix) then "-normMatrix" else ""} \
      ~{if (no_adj) then "-noadj" else ""} \
      ~{if defined(count) then ("-count " +  '"' + count + '"') else ""} \
      ~{if (no_condensing) then "-noCondensing" else ""} \
      ~{if (pc) then "-pc" else ""} \
      ~{if (strand) then "-strand" else ""} \
      ~{if defined(gene) then ("-gene " +  '"' + gene + '"') else ""} \
      ~{if (log) then "-log" else ""} \
      ~{if (sqrt) then "-sqrt" else ""} \
      ~{if (tss) then "-tss" else ""} \
      ~{if (start) then "-start" else ""} \
      ~{if (end) then "-end" else ""} \
      ~{if (maxlength) then "-maxLength" else ""} \
      ~{if (pausing) then "-pausing" else ""}
  >>>
  parameter_meta {
    or: ": analyzeRNA.pl <custom RNA/GTF file> <organism|none>  [additional options...]"
    list_showtag_counts: "[tag directory 2] ... (list of experiment directories to show\\ntag counts for) NOTE: -dfile <file> where file is a list of directories in first column"
    rp_km: "(Report results as reads per kb per million mapped)"
    norm: "<#> (Normalize to total mapped tags: default 1e7)"
    norm_matrix: "<#> (Normalize to total tags in gene expression matrix: not used)"
    no_adj: "(Don't normalize, -raw works too)"
    count: "(Count tags in introns, exons, etc., default: genes)"
    no_condensing: "(do not condense counts from entries will same ID, default: do condense)"
    pc: "<#> (maximum tags to count per position, default: 0=no limit)"
    strand: "<+|-|both> (count tags on indicated strand, default: +)"
    gene: "... (Adds additional data to result based on the closest gene.\\nThis is useful for adding gene expression data.  The file must have a header,\\nand the first column must be a GeneID, Accession number, etc.  If the peak\\ncannot be mapped to data in the file then the entry will be left empty."
    log: "(output tag counts as randomized log2 values - for scatter plots)"
    sqrt: "(output tag counts as randomized sqrt values - for scatter plots)"
    tss: "(estimate actual TSS in 1st exon and report as the centered position in columns 3 & 4)"
    start: "<#> (start counting tags relative # offset of beginning of gene)"
    end: "<#> (finish counting tags relative # offset to end of the gene)"
    maxlength: "<#> (Don't count tags past # bp from the TSS, useful for GroSeq)"
    pausing: "<#> (calculate ratio of pausing first [# bp of transcript] to gene body)\\nProduces 3 columns - promoter rpk, body rpk, and ratio (add -log for log versions)\\nAlso sets \\\"-count genes\\\".  Use \\\"-strand both\\\" when analyzing Pol II ChIP-Seq\\nrpk is reads per kb - set -norm 1e6 or -normMatrix 1e6 to get rpkm\\n"
    rna_vertical_line_repeats: ""
    genome_version: ""
    additional: ""
    options_dot_dot_dot: ""
  }
  output {
    File out_stdout = stdout()
  }
}