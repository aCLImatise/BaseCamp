version 1.0

task Scoary {
  input {
    String? traits
    String? genes
    String? newick_tree
    String? start_col
    String? delimiter
    String? restrict_to
    String? outdir
    Boolean? upgma_tree
    Array[String] p_value_cut_off
    Boolean? apply_indicated_measure
    Int? max_hits
    String? include_input_columns
    Boolean? write_reduced
    Boolean? no_time
    String? permute
    Boolean? no_pairwise
    Boolean? collapse
    String? threads
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
      ~{true="--upgma_tree" false="" upgma_tree} \
      ~{if defined(p_value_cut_off) then ("--p_value_cutoff " +  '"' + p_value_cut_off + '"') else ""} \
      ~{true="-c" false="" apply_indicated_measure} \
      ~{if defined(max_hits) then ("--max_hits " +  '"' + max_hits + '"') else ""} \
      ~{if defined(include_input_columns) then ("--include_input_columns " +  '"' + include_input_columns + '"') else ""} \
      ~{true="--write_reduced" false="" write_reduced} \
      ~{true="--no-time" false="" no_time} \
      ~{if defined(permute) then ("--permute " +  '"' + permute + '"') else ""} \
      ~{true="--no_pairwise" false="" no_pairwise} \
      ~{true="--collapse" false="" collapse} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{true="--test" false="" test} \
      ~{true="--citation" false="" citation}
  >>>
  parameter_meta {
    traits: "Input trait table (comma-separated-values). Trait presence is indicated by 1, trait absence by 0. Assumes strain names in the first column and trait names in the first row"
    genes: "Input gene presence/absence table (comma-separated- values) from ROARY. Strain names must be equal to those in the trait table"
    newick_tree: "Supply a custom tree (Newick format) for phylogenetic analyses instead instead of calculating it internally."
    start_col: "On which column in the gene presence/absence file do individual strain info start. Default=15. (1-based indexing)"
    delimiter: "The delimiter between cells in the gene presence/absence and trait files, as well as the output file."
    restrict_to: "Use if you only want to analyze a subset of your strains. Scoary will read the provided comma-separated table of strains and restrict analyzes to these."
    outdir: "Directory to place output files. Default = ."
    upgma_tree: "This flag will cause Scoary to write the calculated UPGMA tree to a newick file"
    p_value_cut_off: "P-value cut-off / alpha level. For Fishers, Bonferronis, and Benjamini-Hochbergs tests, SCOARY will not report genes with higher p-values than this. For empirical p-values, this is treated as an alpha level instead. I.e. 0.02 will filter all genes except the lower and upper percentile from this test. Run with \"-p 1.0\" to report all genes. Accepts standard form (e.g. 1E-8). Provide a single value (applied to all) or exactly as many values as correction criteria and in corresponding order. (See example under correction). Default = 0.05"
    apply_indicated_measure: "[{I,B,BH,PW,EPW,P} [{I,B,BH,PW,EPW,P} ...]], --correction [{I,B,BH,PW,EPW,P} [{I,B,BH,PW,EPW,P} ...]] Apply the indicated filtration measure. Allowed values are I, B, BH, PW, EPW, P. I=Individual (naive) p-value. B=Bonferroni adjusted p-value. BH=Benjamini- Hochberg adjusted p. PW=Best (lowest) pairwise comparison. EPW=Entire range of pairwise comparison p-values. P=Empirical p-value from permutations. You can enter as many correction criteria as you would like. These will be associated with the p_value_cutoffs you enter. For example \"-c I EPW -p 0.1 0.05\" will apply the following cutoffs: Naive p-value must be lower than 0.1 AND the entire range of pairwise comparison values are below 0.05 for this gene. Note that the empirical p-values should be interpreted at both tails. Therefore, running \"-c P -p 0.05\" will apply an alpha of 0.05 to the empirical (permuted) p-values, i.e. it will filter everything except the upper and lower 2.5 percent of the distribution. Default = Individual p-value. (I)"
    max_hits: "Maximum number of hits to report. SCOARY will only report the top max_hits results per trait"
    include_input_columns: "Grab columns from the input Roary file. and puts them in the output. Handles comma and ranges, e.g. --include_input_columns 4,6,8,16-23. The special keyword ALL will include all relevant input columns in the output"
    write_reduced: "Use with -r if you want Scoary to create a new gene presence absence file from your reduced set of isolates. Note: Columns 1-14 (No. sequences, Avg group size nuc etc) in this file do not reflect the reduced dataset. These are taken from the full dataset."
    no_time: "Output file in the form TRAIT.results.csv, instead of TRAIT_TIMESTAMP.csv. When used with the -w argument will output a reduced gene matrix in the form gene_presence_absence_reduced.csv rather than gene_presence_absence_reduced_TIMESTAMP.csv"
    permute: "Perform N number of permutations of the significant results post-analysis. Each permutation will do a label switching of the phenotype and a new p-value is calculated according to this new dataset. After all N permutations are completed, the results are ordered in ascending order, and the percentile of the original result in the permuted p-value distribution is reported."
    no_pairwise: "Do not perform pairwise comparisons. Inthis mode, Scoary will perform population structure-naive calculations only. (Fishers test, ORs etc). Useful for summary operations and exploring sets. (Genes unique in groups, intersections etc) but not causal analyses."
    collapse: "Add this to collapse correlated genes (genes that have identical distribution patterns in the sample) into merged units."
    threads: "Number of threads to use. Default = 1"
    test: "Run Scoary on the test set in exampledata, overriding all other parameters."
    citation: "Show citation information, and exit."
  }
}