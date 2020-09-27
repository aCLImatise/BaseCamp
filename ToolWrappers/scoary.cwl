class: CommandLineTool
id: scoary.cwl
inputs:
- id: in_traits
  doc: "Input trait table (comma-separated-values). Trait\npresence is indicated by\
    \ 1, trait absence by 0.\nAssumes strain names in the first column and trait\n\
    names in the first row"
  type: long
  inputBinding:
    prefix: --traits
- id: in_genes
  doc: "Input gene presence/absence table (comma-separated-\nvalues) from ROARY. Strain\
    \ names must be equal to\nthose in the trait table"
  type: string
  inputBinding:
    prefix: --genes
- id: in_newick_tree
  doc: "Supply a custom tree (Newick format) for phylogenetic\nanalyses instead instead\
    \ of calculating it internally."
  type: string
  inputBinding:
    prefix: --newicktree
- id: in_start_col
  doc: "On which column in the gene presence/absence file do\nindividual strain info\
    \ start. Default=15. (1-based\nindexing)"
  type: File
  inputBinding:
    prefix: --start_col
- id: in_delimiter
  doc: "The delimiter between cells in the gene\npresence/absence and trait files,\
    \ as well as the\noutput file."
  type: File
  inputBinding:
    prefix: --delimiter
- id: in_restrict_to
  doc: "Use if you only want to analyze a subset of your\nstrains. Scoary will read\
    \ the provided comma-separated\ntable of strains and restrict analyzes to these."
  type: string
  inputBinding:
    prefix: --restrict_to
- id: in_outdir
  doc: Directory to place output files. Default = .
  type: Directory
  inputBinding:
    prefix: --outdir
- id: in_upgma_tree
  doc: "This flag will cause Scoary to write the calculated\nUPGMA tree to a newick\
    \ file"
  type: boolean
  inputBinding:
    prefix: --upgma_tree
- id: in_p_value_cut_off
  doc: "P-value cut-off / alpha level. For Fishers,\nBonferronis, and Benjamini-Hochbergs\
    \ tests, SCOARY\nwill not report genes with higher p-values than this.\nFor empirical\
    \ p-values, this is treated as an alpha\nlevel instead. I.e. 0.02 will filter\
    \ all genes except\nthe lower and upper percentile from this test. Run\nwith \"\
    -p 1.0\" to report all genes. Accepts standard\nform (e.g. 1E-8). Provide a single\
    \ value (applied to\nall) or exactly as many values as correction criteria\nand\
    \ in corresponding order. (See example under\ncorrection). Default = 0.05"
  type: string[]
  inputBinding:
    prefix: --p_value_cutoff
- id: in_apply_indicated_measure
  doc: "[{I,B,BH,PW,EPW,P} [{I,B,BH,PW,EPW,P} ...]], --correction [{I,B,BH,PW,EPW,P}\
    \ [{I,B,BH,PW,EPW,P} ...]]\nApply the indicated filtration measure. Allowed values\n\
    are I, B, BH, PW, EPW, P. I=Individual (naive)\np-value. B=Bonferroni adjusted\
    \ p-value. BH=Benjamini-\nHochberg adjusted p. PW=Best (lowest) pairwise\ncomparison.\
    \ EPW=Entire range of pairwise comparison\np-values. P=Empirical p-value from\
    \ permutations. You\ncan enter as many correction criteria as you would\nlike.\
    \ These will be associated with the\np_value_cutoffs you enter. For example \"\
    -c I EPW -p\n0.1 0.05\" will apply the following cutoffs: Naive\np-value must\
    \ be lower than 0.1 AND the entire range of\npairwise comparison values are below\
    \ 0.05 for this\ngene. Note that the empirical p-values should be\ninterpreted\
    \ at both tails. Therefore, running \"-c P -p\n0.05\" will apply an alpha of 0.05\
    \ to the empirical\n(permuted) p-values, i.e. it will filter everything\nexcept\
    \ the upper and lower 2.5 percent of the\ndistribution. Default = Individual p-value.\
    \ (I)"
  type: boolean
  inputBinding:
    prefix: -c
- id: in_max_hits
  doc: "Maximum number of hits to report. SCOARY will only\nreport the top max_hits\
    \ results per trait"
  type: long
  inputBinding:
    prefix: --max_hits
- id: in_include_input_columns
  doc: "Grab columns from the input Roary file. and puts them\nin the output. Handles\
    \ comma and ranges, e.g.\n--include_input_columns 4,6,8,16-23. The special\nkeyword\
    \ ALL will include all relevant input columns in\nthe output"
  type: File
  inputBinding:
    prefix: --include_input_columns
- id: in_write_reduced
  doc: "Use with -r if you want Scoary to create a new gene\npresence absence file\
    \ from your reduced set of\nisolates. Note: Columns 1-14 (No. sequences, Avg group\n\
    size nuc etc) in this file do not reflect the reduced\ndataset. These are taken\
    \ from the full dataset."
  type: boolean
  inputBinding:
    prefix: --write_reduced
- id: in_no_time
  doc: "Output file in the form TRAIT.results.csv, instead of\nTRAIT_TIMESTAMP.csv.\
    \ When used with the -w argument\nwill output a reduced gene matrix in the form\n\
    gene_presence_absence_reduced.csv rather than\ngene_presence_absence_reduced_TIMESTAMP.csv"
  type: File
  inputBinding:
    prefix: --no-time
- id: in_permute
  doc: "Perform N number of permutations of the significant\nresults post-analysis.\
    \ Each permutation will do a\nlabel switching of the phenotype and a new p-value\
    \ is\ncalculated according to this new dataset. After all N\npermutations are\
    \ completed, the results are ordered in\nascending order, and the percentile of\
    \ the original\nresult in the permuted p-value distribution is\nreported."
  type: long
  inputBinding:
    prefix: --permute
- id: in_no_pairwise
  doc: "Do not perform pairwise comparisons. Inthis mode,\nScoary will perform population\
    \ structure-naive\ncalculations only. (Fishers test, ORs etc). Useful for\nsummary\
    \ operations and exploring sets. (Genes unique\nin groups, intersections etc)\
    \ but not causal analyses."
  type: boolean
  inputBinding:
    prefix: --no_pairwise
- id: in_collapse
  doc: "Add this to collapse correlated genes (genes that have\nidentical distribution\
    \ patterns in the sample) into\nmerged units."
  type: boolean
  inputBinding:
    prefix: --collapse
- id: in_threads
  doc: Number of threads to use. Default = 1
  type: long
  inputBinding:
    prefix: --threads
- id: in_test
  doc: "Run Scoary on the test set in exampledata, overriding\nall other parameters."
  type: boolean
  inputBinding:
    prefix: --test
- id: in_citation
  doc: Show citation information, and exit.
  type: boolean
  inputBinding:
    prefix: --citation
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_delimiter
  doc: "The delimiter between cells in the gene\npresence/absence and trait files,\
    \ as well as the\noutput file."
  type: File
  outputBinding:
    glob: $(inputs.in_delimiter)
- id: out_outdir
  doc: Directory to place output files. Default = .
  type: Directory
  outputBinding:
    glob: $(inputs.in_outdir)
- id: out_no_time
  doc: "Output file in the form TRAIT.results.csv, instead of\nTRAIT_TIMESTAMP.csv.\
    \ When used with the -w argument\nwill output a reduced gene matrix in the form\n\
    gene_presence_absence_reduced.csv rather than\ngene_presence_absence_reduced_TIMESTAMP.csv"
  type: File
  outputBinding:
    glob: $(inputs.in_no_time)
cwlVersion: v1.1
baseCommand:
- scoary
