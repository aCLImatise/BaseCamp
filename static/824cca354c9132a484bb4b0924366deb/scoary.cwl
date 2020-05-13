class: CommandLineTool
id: scoary.cwl
inputs:
- id: traits
  doc: Input trait table (comma-separated-values). Trait presence is indicated by
    1, trait absence by 0. Assumes strain names in the first column and trait names
    in the first row
  type: string
  inputBinding:
    prefix: --traits
- id: genes
  doc: Input gene presence/absence table (comma-separated- values) from ROARY. Strain
    names must be equal to those in the trait table
  type: string
  inputBinding:
    prefix: --genes
- id: newick_tree
  doc: Supply a custom tree (Newick format) for phylogenetic analyses instead instead
    of calculating it internally.
  type: string
  inputBinding:
    prefix: --newicktree
- id: start_col
  doc: On which column in the gene presence/absence file do individual strain info
    start. Default=15. (1-based indexing)
  type: string
  inputBinding:
    prefix: --start_col
- id: delimiter
  doc: The delimiter between cells in the gene presence/absence and trait files, as
    well as the output file.
  type: string
  inputBinding:
    prefix: --delimiter
- id: restrict_to
  doc: Use if you only want to analyze a subset of your strains. Scoary will read
    the provided comma-separated table of strains and restrict analyzes to these.
  type: string
  inputBinding:
    prefix: --restrict_to
- id: outdir
  doc: Directory to place output files. Default = .
  type: string
  inputBinding:
    prefix: --outdir
- id: upgma_tree
  doc: This flag will cause Scoary to write the calculated UPGMA tree to a newick
    file
  type: boolean
  inputBinding:
    prefix: --upgma_tree
- id: p_value_cut_off
  doc: P-value cut-off / alpha level. For Fishers, Bonferronis, and Benjamini-Hochbergs
    tests, SCOARY will not report genes with higher p-values than this. For empirical
    p-values, this is treated as an alpha level instead. I.e. 0.02 will filter all
    genes except the lower and upper percentile from this test. Run with "-p 1.0"
    to report all genes. Accepts standard form (e.g. 1E-8). Provide a single value
    (applied to all) or exactly as many values as correction criteria and in corresponding
    order. (See example under correction). Default = 0.05
  type: string[]
  inputBinding:
    prefix: --p_value_cutoff
- id: c
  doc: '[{I,B,BH,PW,EPW,P} [{I,B,BH,PW,EPW,P} ...]], --correction [{I,B,BH,PW,EPW,P}
    [{I,B,BH,PW,EPW,P} ...]] Apply the indicated filtration measure. Allowed values
    are I, B, BH, PW, EPW, P. I=Individual (naive) p-value. B=Bonferroni adjusted
    p-value. BH=Benjamini- Hochberg adjusted p. PW=Best (lowest) pairwise comparison.
    EPW=Entire range of pairwise comparison p-values. P=Empirical p-value from permutations.
    You can enter as many correction criteria as you would like. These will be associated
    with the p_value_cutoffs you enter. For example "-c I EPW -p 0.1 0.05" will apply
    the following cutoffs: Naive p-value must be lower than 0.1 AND the entire range
    of pairwise comparison values are below 0.05 for this gene. Note that the empirical
    p-values should be interpreted at both tails. Therefore, running "-c P -p 0.05"
    will apply an alpha of 0.05 to the empirical (permuted) p-values, i.e. it will
    filter everything except the upper and lower 2.5 percent of the distribution.
    Default = Individual p-value. (I)'
  type: boolean
  inputBinding:
    prefix: -c
- id: max_hits
  doc: Maximum number of hits to report. SCOARY will only report the top max_hits
    results per trait
  type: long
  inputBinding:
    prefix: --max_hits
- id: include_input_columns
  doc: Grab columns from the input Roary file. and puts them in the output. Handles
    comma and ranges, e.g. --include_input_columns 4,6,8,16-23. The special keyword
    ALL will include all relevant input columns in the output
  type: string
  inputBinding:
    prefix: --include_input_columns
- id: write_reduced
  doc: 'Use with -r if you want Scoary to create a new gene presence absence file
    from your reduced set of isolates. Note: Columns 1-14 (No. sequences, Avg group
    size nuc etc) in this file do not reflect the reduced dataset. These are taken
    from the full dataset.'
  type: boolean
  inputBinding:
    prefix: --write_reduced
- id: no_time
  doc: Output file in the form TRAIT.results.csv, instead of TRAIT_TIMESTAMP.csv.
    When used with the -w argument will output a reduced gene matrix in the form gene_presence_absence_reduced.csv
    rather than gene_presence_absence_reduced_TIMESTAMP.csv
  type: boolean
  inputBinding:
    prefix: --no-time
- id: permute
  doc: Perform N number of permutations of the significant results post-analysis.
    Each permutation will do a label switching of the phenotype and a new p-value
    is calculated according to this new dataset. After all N permutations are completed,
    the results are ordered in ascending order, and the percentile of the original
    result in the permuted p-value distribution is reported.
  type: string
  inputBinding:
    prefix: --permute
- id: no_pairwise
  doc: Do not perform pairwise comparisons. Inthis mode, Scoary will perform population
    structure-naive calculations only. (Fishers test, ORs etc). Useful for summary
    operations and exploring sets. (Genes unique in groups, intersections etc) but
    not causal analyses.
  type: boolean
  inputBinding:
    prefix: --no_pairwise
- id: collapse
  doc: Add this to collapse correlated genes (genes that have identical distribution
    patterns in the sample) into merged units.
  type: boolean
  inputBinding:
    prefix: --collapse
- id: threads
  doc: Number of threads to use. Default = 1
  type: string
  inputBinding:
    prefix: --threads
- id: test
  doc: Run Scoary on the test set in exampledata, overriding all other parameters.
  type: boolean
  inputBinding:
    prefix: --test
- id: citation
  doc: Show citation information, and exit.
  type: boolean
  inputBinding:
    prefix: --citation
outputs: []
cwlVersion: v1.1
baseCommand:
- scoary
