version 1.0

task Scoary {
  input {
    Int? traits
    String? genes
    String? newick_tree
    File? start_col
    File? delimiter
    String? restrict_to
    Directory? outdir
    Boolean? upgma_tree
    Array[String] p_value_cut_off
    Boolean? apply_indicated_measure
    Int? max_hits
    File? include_input_columns
    Boolean? write_reduced
    File? no_time
    Int? permute
    Boolean? no_pairwise
    Boolean? collapse
    Int? threads
    Boolean? test
    Boolean? citation
  }
  command <<<
    scoary \
      ~{if defined(traits) then ("--traits " +  '"' + traits + '"') else ""} \
      ~{if defined(genes) then ("--genes " +  '"' + genes + '"') else ""} \
      ~{if defined(newick_tree) then ("--newicktree " +  '"' + newick_tree + '"') else ""} \
      ~{if defined(start_col) then ("--start_col " +  '"' + start_col + '"') else ""} \
      ~{if defined(delimiter) then ("--delimiter " +  '"' + delimiter + '"') else ""} \
      ~{if defined(restrict_to) then ("--restrict_to " +  '"' + restrict_to + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if (upgma_tree) then "--upgma_tree" else ""} \
      ~{if defined(p_value_cut_off) then ("--p_value_cutoff " +  '"' + p_value_cut_off + '"') else ""} \
      ~{if (apply_indicated_measure) then "-c" else ""} \
      ~{if defined(max_hits) then ("--max_hits " +  '"' + max_hits + '"') else ""} \
      ~{if defined(include_input_columns) then ("--include_input_columns " +  '"' + include_input_columns + '"') else ""} \
      ~{if (write_reduced) then "--write_reduced" else ""} \
      ~{if (no_time) then "--no-time" else ""} \
      ~{if defined(permute) then ("--permute " +  '"' + permute + '"') else ""} \
      ~{if (no_pairwise) then "--no_pairwise" else ""} \
      ~{if (collapse) then "--collapse" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (test) then "--test" else ""} \
      ~{if (citation) then "--citation" else ""}
  >>>
  parameter_meta {
    traits: "Input trait table (comma-separated-values). Trait\\npresence is indicated by 1, trait absence by 0.\\nAssumes strain names in the first column and trait\\nnames in the first row"
    genes: "Input gene presence/absence table (comma-separated-\\nvalues) from ROARY. Strain names must be equal to\\nthose in the trait table"
    newick_tree: "Supply a custom tree (Newick format) for phylogenetic\\nanalyses instead instead of calculating it internally."
    start_col: "On which column in the gene presence/absence file do\\nindividual strain info start. Default=15. (1-based\\nindexing)"
    delimiter: "The delimiter between cells in the gene\\npresence/absence and trait files, as well as the\\noutput file."
    restrict_to: "Use if you only want to analyze a subset of your\\nstrains. Scoary will read the provided comma-separated\\ntable of strains and restrict analyzes to these."
    outdir: "Directory to place output files. Default = ."
    upgma_tree: "This flag will cause Scoary to write the calculated\\nUPGMA tree to a newick file"
    p_value_cut_off: "P-value cut-off / alpha level. For Fishers,\\nBonferronis, and Benjamini-Hochbergs tests, SCOARY\\nwill not report genes with higher p-values than this.\\nFor empirical p-values, this is treated as an alpha\\nlevel instead. I.e. 0.02 will filter all genes except\\nthe lower and upper percentile from this test. Run\\nwith \\\"-p 1.0\\\" to report all genes. Accepts standard\\nform (e.g. 1E-8). Provide a single value (applied to\\nall) or exactly as many values as correction criteria\\nand in corresponding order. (See example under\\ncorrection). Default = 0.05"
    apply_indicated_measure: "[{I,B,BH,PW,EPW,P} [{I,B,BH,PW,EPW,P} ...]], --correction [{I,B,BH,PW,EPW,P} [{I,B,BH,PW,EPW,P} ...]]\\nApply the indicated filtration measure. Allowed values\\nare I, B, BH, PW, EPW, P. I=Individual (naive)\\np-value. B=Bonferroni adjusted p-value. BH=Benjamini-\\nHochberg adjusted p. PW=Best (lowest) pairwise\\ncomparison. EPW=Entire range of pairwise comparison\\np-values. P=Empirical p-value from permutations. You\\ncan enter as many correction criteria as you would\\nlike. These will be associated with the\\np_value_cutoffs you enter. For example \\\"-c I EPW -p\\n0.1 0.05\\\" will apply the following cutoffs: Naive\\np-value must be lower than 0.1 AND the entire range of\\npairwise comparison values are below 0.05 for this\\ngene. Note that the empirical p-values should be\\ninterpreted at both tails. Therefore, running \\\"-c P -p\\n0.05\\\" will apply an alpha of 0.05 to the empirical\\n(permuted) p-values, i.e. it will filter everything\\nexcept the upper and lower 2.5 percent of the\\ndistribution. Default = Individual p-value. (I)"
    max_hits: "Maximum number of hits to report. SCOARY will only\\nreport the top max_hits results per trait"
    include_input_columns: "Grab columns from the input Roary file. and puts them\\nin the output. Handles comma and ranges, e.g.\\n--include_input_columns 4,6,8,16-23. The special\\nkeyword ALL will include all relevant input columns in\\nthe output"
    write_reduced: "Use with -r if you want Scoary to create a new gene\\npresence absence file from your reduced set of\\nisolates. Note: Columns 1-14 (No. sequences, Avg group\\nsize nuc etc) in this file do not reflect the reduced\\ndataset. These are taken from the full dataset."
    no_time: "Output file in the form TRAIT.results.csv, instead of\\nTRAIT_TIMESTAMP.csv. When used with the -w argument\\nwill output a reduced gene matrix in the form\\ngene_presence_absence_reduced.csv rather than\\ngene_presence_absence_reduced_TIMESTAMP.csv"
    permute: "Perform N number of permutations of the significant\\nresults post-analysis. Each permutation will do a\\nlabel switching of the phenotype and a new p-value is\\ncalculated according to this new dataset. After all N\\npermutations are completed, the results are ordered in\\nascending order, and the percentile of the original\\nresult in the permuted p-value distribution is\\nreported."
    no_pairwise: "Do not perform pairwise comparisons. Inthis mode,\\nScoary will perform population structure-naive\\ncalculations only. (Fishers test, ORs etc). Useful for\\nsummary operations and exploring sets. (Genes unique\\nin groups, intersections etc) but not causal analyses."
    collapse: "Add this to collapse correlated genes (genes that have\\nidentical distribution patterns in the sample) into\\nmerged units."
    threads: "Number of threads to use. Default = 1"
    test: "Run Scoary on the test set in exampledata, overriding\\nall other parameters."
    citation: "Show citation information, and exit."
  }
  output {
    File out_stdout = stdout()
    File out_delimiter = "${in_delimiter}"
    Directory out_outdir = "${in_outdir}"
    File out_no_time = "${in_no_time}"
  }
}