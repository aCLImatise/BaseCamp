version 1.0

task FindKnownMotifspl {
  input {
    File? tsv_sequence_fileg
    Directory? o
    File? g
  }
  command <<<
    findKnownMotifs_pl \
      ~{if defined(tsv_sequence_fileg) then ("-s " +  '"' + tsv_sequence_fileg + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(g) then ("-g " +  '"' + g + '"') else ""}
  >>>
  parameter_meta {
    tsv_sequence_fileg: "(tsv sequence file)\\n-g <group file> (tsv group file)\\n-o <output directory>\\n-m <motif file> (Known motif file, default: /usr/local/share/homer-4.11-2/.//data/knownTFs/known.motifs)\\n-strand <both|+|->\\n-stat <hypergeo|binomial> (default: hypergeo)\\n-pvalue <#> (p-value cutoff, default: 0.01)\\n-optimize (Optimize motif degeneracy thresholds to maximize enrichment)\\n-homer (use original homer, default, for now...)\\n-homer2 (use homer2)\\n-p <#> (number of CPUs to use, homer2 only)\\n-cache <#> (size in MB of statistics cache, default: 500)\\n-bits (scale logos by information content)\\n-dbview (internal option)\\n-seqlogo (Use Weblogo/seqlogo/ghostscript, by default now generates SVG logos)\\n-rna (output RNA logos i.e. U instead of T)\\n"
    o: ""
    g: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_o = "${in_o}"
  }
}