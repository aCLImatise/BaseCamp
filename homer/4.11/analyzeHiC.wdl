version 1.0

task AnalyzeHiC {
  input {
    Boolean? res
    Boolean? window
    String? specify_regions_make
    Boolean? vs_genome
    Boolean? chop_if_y
    Boolean? relative
    File? pout
    Boolean? ihs_kb
    Boolean? raw
    Boolean? coverage_norm
    Boolean? balance
    Boolean? dist_norm
    Boolean? log
    Boolean? corr
    File? output_file_name
    String? compaction_stats
    Boolean? dlr_distance
    String? ifc
    String? four_c
    Boolean? cpu
    Boolean? no_matrix
    Boolean? std
    Boolean? min
    Boolean? min_expect
    Boolean? override
    Boolean? logp
    Boolean? expected
    File? raw_and_expected
    Boolean? cluster
    Boolean? cluster_fixed
    File? interactions
    Boolean? p_value
    Boolean? zscore
    Boolean? mind_ist
    Boolean? max_dist
    Boolean? boundary
    Boolean? washu
    File? circo_s
    String? will_plot_densities
    String? similar_visiualization_genesg
    String? shows_gene_locations
    Boolean? hist
    Boolean? size
    Int? analyzing_specific_sets
    String? i_raw
    String pe_tag_directory
  }
  command <<<
    analyzeHiC \
      ~{pe_tag_directory} \
      ~{true="-res" false="" res} \
      ~{true="-window" false="" window} \
      ~{if defined(specify_regions_make) then ("-p " +  '"' + specify_regions_make + '"') else ""} \
      ~{true="-vsGenome" false="" vs_genome} \
      ~{true="-chopify" false="" chop_if_y} \
      ~{true="-relative" false="" relative} \
      ~{if defined(pout) then ("-pout " +  '"' + pout + '"') else ""} \
      ~{true="-ihskb" false="" ihs_kb} \
      ~{true="-raw" false="" raw} \
      ~{true="-coverageNorm" false="" coverage_norm} \
      ~{true="-balance" false="" balance} \
      ~{true="-distNorm" false="" dist_norm} \
      ~{true="-log" false="" log} \
      ~{true="-corr" false="" corr} \
      ~{if defined(output_file_name) then ("-o " +  '"' + output_file_name + '"') else ""} \
      ~{if defined(compaction_stats) then ("-compactionStats " +  '"' + compaction_stats + '"') else ""} \
      ~{true="-dlrDistance" false="" dlr_distance} \
      ~{if defined(ifc) then ("-ifc " +  '"' + ifc + '"') else ""} \
      ~{if defined(four_c) then ("-4C " +  '"' + four_c + '"') else ""} \
      ~{true="-cpu" false="" cpu} \
      ~{true="-nomatrix" false="" no_matrix} \
      ~{true="-std" false="" std} \
      ~{true="-min" false="" min} \
      ~{true="-minExpect" false="" min_expect} \
      ~{true="-override" false="" override} \
      ~{true="-logp" false="" logp} \
      ~{true="-expected" false="" expected} \
      ~{if defined(raw_and_expected) then ("-rawAndExpected " +  '"' + raw_and_expected + '"') else ""} \
      ~{true="-cluster" false="" cluster} \
      ~{true="-clusterFixed" false="" cluster_fixed} \
      ~{if defined(interactions) then ("-interactions " +  '"' + interactions + '"') else ""} \
      ~{true="-pvalue" false="" p_value} \
      ~{true="-zscore" false="" zscore} \
      ~{true="-minDist" false="" mind_ist} \
      ~{true="-maxDist" false="" max_dist} \
      ~{true="-boundary" false="" boundary} \
      ~{true="-washu" false="" washu} \
      ~{if defined(circo_s) then ("-circos " +  '"' + circo_s + '"') else ""} \
      ~{if defined(will_plot_densities) then ("-d " +  '"' + will_plot_densities + '"') else ""} \
      ~{if defined(similar_visiualization_genesg) then ("-b " +  '"' + similar_visiualization_genesg + '"') else ""} \
      ~{if defined(shows_gene_locations) then ("-g " +  '"' + shows_gene_locations + '"') else ""} \
      ~{true="-hist" false="" hist} \
      ~{true="-size" false="" size} \
      ~{if defined(analyzing_specific_sets) then ("-i " +  '"' + analyzing_specific_sets + '"') else ""} \
      ~{if defined(i_raw) then ("-iraw " +  '"' + i_raw + '"') else ""}
  >>>
  parameter_meta {
    res: "<#> (Resolution of matrix in bp or use \"-res site\" [see below], default: 10000000)"
    window: "<#> (size of region to count tags for overlapping windows, default: same as res)"
    specify_regions_make: "(specify regions to make matrix, unbalanced, use -p2 <peak file>)"
    vs_genome: "(normally makes a square matrix, this will force 2nd set of peaks to be the genome)"
    chop_if_y: "(divide up peaks into regions the size of the resolution, default: use peak midpoints)"
    relative: "(use with -maxDist <#>, outputs diagonal of matrix up to maxDistance)"
    pout: "(output peaks used for analysis as a peak file, -pout2 <file> for 2nd set)"
    ihs_kb: "<#> (normalize counts to \"interactions per hundred square kilobases per billion, default) Use '-normTotal <#>' and '-normArea <#>' to modify normalization constants, area in bp^2 Use '-normTotal given' and '-normArea given' to disable normalizations"
    raw: "(report raw interaction counts)"
    coverage_norm: "(Only adjust reads based on total interactions per region, default)"
    balance: "(balance resulting matrix - row/column totals the same)"
    dist_norm: "(return log2 obs/expected counts normalized for interaction distance)"
    log: "| -nolog (force matrix to be linear or log2 transformed)"
    corr: "(report Pearson's correlation coeff, use \"-corrIters <#>\" to recursively calculate) -corrDepth <#> (merge regions in correlation so that minimum # expected tags per data point)"
    output_file_name: "(Output file name, default: sent to stdout)"
    compaction_stats: "(calculates DLR and ICF compaction scores)"
    dlr_distance: "<#> (Cutoff distance for distal vs. local interactions for DLR, default: 3Mb"
    ifc: "(outputs interaction frequence curve for regions, can set to \"auto\")"
    four_c: "(outputs tags interacting with specified regions)"
    cpu: "<#> (number of CPUs to use, default: 1)"
    no_matrix: "(skip matrix creation - use if more than 100,000 loci)"
    std: "<#> (# of std deviations from mean interactions per region to exclude, default:8)"
    min: "<#> (minimum fraction of average read depth to include in analysis, default: 0.05)"
    min_expect: "<#> (minimum fraction of average read depth to use for coverage normalization, default: 0.75)"
    override: "(Allow very large matrices to be created... be carful using this)"
    logp: "(output log p-values from old-style interaction calculations)"
    expected: "(report expected interaction counts based on average profile)"
    raw_and_expected: "(raw counts sent to stdout)"
    cluster: "(cluster regions, uses \"-o\" to name cdt/gtr files, default: out.cdt)"
    cluster_fixed: "(clusters adjacent regions, good for linear domains)"
    interactions: "(output interactions, add \"-center\" to adjust pos to avg of reads)"
    p_value: "<#> (p-value cutoff for interactions, default 0.001)"
    zscore: "<#> (z-score cutoff for interactions, default 1.0)"
    mind_ist: "<#> (Minimum interaction distance, default: resolution/2)"
    max_dist: "<#> (Maximum interaction distance, default: -1=none)"
    boundary: "<#> (score boundaries at the given scale i.e. 100000)"
    washu: "(Both matrix and interaction outputs will be in WashH BED format)"
    circo_s: "(creates circos files with the given prefix)"
    will_plot_densities: "[tag directory 2] ... (will plot tag densities with circos)"
    similar_visiualization_genesg: "(similar to visiualization of genes/-g, but no labels)"
    shows_gene_locations: "(shows gene locations)"
    hist: "<#> (create a histogram matrix around peak positions, # is the resolution)"
    size: "<#> (size of region in histogram, default = 100 * resolution)"
    analyzing_specific_sets: "(for analyzing specific sets of interactions)"
    i_raw: "(output raw reads from interactions, or -irawtags <file>)"
    pe_tag_directory: ""
  }
}