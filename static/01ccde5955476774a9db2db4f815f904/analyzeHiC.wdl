version 1.0

task AnalyzeHiC {
  input {
    Boolean? res
    Boolean? window
    String? chr
    Boolean? start
    Boolean? end
    String? pos
    Int? start_two
    File? specify_regions_make
    Boolean? vs_genome
    Boolean? chop_if_y
    Boolean? relative
    File? pout
    Boolean? ihs_kb
    Boolean? raw
    Boolean? coverage_norm
    Boolean? balance
    Boolean? dist_norm
    Boolean? no_log
    Boolean? corr
    Boolean? corr_depth
    File? output_file_name
    File? compaction_stats
    Boolean? dlr_distance
    File? ifc
    File? four_c
    Boolean? cpu
    Boolean? no_matrix
    Boolean? std
    Boolean? min
    Boolean? min_expect
    Boolean? override
    Boolean? force
    Boolean? bg_only
    File? create_model
    File? model
    File? randomize
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
    Directory? plot_tag_densities
    File? similar_visiualization_genesg
    File? shows_gene_locations
    Boolean? hist
    Boolean? size
    File? analyzing_specific_sets
    File? i_raw
    Directory pe_tag_directory
  }
  command <<<
    analyzeHiC \
      ~{pe_tag_directory} \
      ~{if (res) then "-res" else ""} \
      ~{if (window) then "-window" else ""} \
      ~{if defined(chr) then ("-chr " +  '"' + chr + '"') else ""} \
      ~{if (start) then "-start" else ""} \
      ~{if (end) then "-end" else ""} \
      ~{if defined(pos) then ("-pos " +  '"' + pos + '"') else ""} \
      ~{if defined(start_two) then ("-start2 " +  '"' + start_two + '"') else ""} \
      ~{if defined(specify_regions_make) then ("-p " +  '"' + specify_regions_make + '"') else ""} \
      ~{if (vs_genome) then "-vsGenome" else ""} \
      ~{if (chop_if_y) then "-chopify" else ""} \
      ~{if (relative) then "-relative" else ""} \
      ~{if defined(pout) then ("-pout " +  '"' + pout + '"') else ""} \
      ~{if (ihs_kb) then "-ihskb" else ""} \
      ~{if (raw) then "-raw" else ""} \
      ~{if (coverage_norm) then "-coverageNorm" else ""} \
      ~{if (balance) then "-balance" else ""} \
      ~{if (dist_norm) then "-distNorm" else ""} \
      ~{if (no_log) then "-nolog" else ""} \
      ~{if (corr) then "-corr" else ""} \
      ~{if (corr_depth) then "-corrDepth" else ""} \
      ~{if defined(output_file_name) then ("-o " +  '"' + output_file_name + '"') else ""} \
      ~{if defined(compaction_stats) then ("-compactionStats " +  '"' + compaction_stats + '"') else ""} \
      ~{if (dlr_distance) then "-dlrDistance" else ""} \
      ~{if defined(ifc) then ("-ifc " +  '"' + ifc + '"') else ""} \
      ~{if defined(four_c) then ("-4C " +  '"' + four_c + '"') else ""} \
      ~{if (cpu) then "-cpu" else ""} \
      ~{if (no_matrix) then "-nomatrix" else ""} \
      ~{if (std) then "-std" else ""} \
      ~{if (min) then "-min" else ""} \
      ~{if (min_expect) then "-minExpect" else ""} \
      ~{if (override) then "-override" else ""} \
      ~{if (force) then "-force" else ""} \
      ~{if (bg_only) then "-bgonly" else ""} \
      ~{if defined(create_model) then ("-createModel " +  '"' + create_model + '"') else ""} \
      ~{if defined(model) then ("-model " +  '"' + model + '"') else ""} \
      ~{if defined(randomize) then ("-randomize " +  '"' + randomize + '"') else ""} \
      ~{if (logp) then "-logp" else ""} \
      ~{if (expected) then "-expected" else ""} \
      ~{if defined(raw_and_expected) then ("-rawAndExpected " +  '"' + raw_and_expected + '"') else ""} \
      ~{if (cluster) then "-cluster" else ""} \
      ~{if (cluster_fixed) then "-clusterFixed" else ""} \
      ~{if defined(interactions) then ("-interactions " +  '"' + interactions + '"') else ""} \
      ~{if (p_value) then "-pvalue" else ""} \
      ~{if (zscore) then "-zscore" else ""} \
      ~{if (mind_ist) then "-minDist" else ""} \
      ~{if (max_dist) then "-maxDist" else ""} \
      ~{if (boundary) then "-boundary" else ""} \
      ~{if (washu) then "-washu" else ""} \
      ~{if defined(circo_s) then ("-circos " +  '"' + circo_s + '"') else ""} \
      ~{if defined(plot_tag_densities) then ("-d " +  '"' + plot_tag_densities + '"') else ""} \
      ~{if defined(similar_visiualization_genesg) then ("-b " +  '"' + similar_visiualization_genesg + '"') else ""} \
      ~{if defined(shows_gene_locations) then ("-g " +  '"' + shows_gene_locations + '"') else ""} \
      ~{if (hist) then "-hist" else ""} \
      ~{if (size) then "-size" else ""} \
      ~{if defined(analyzing_specific_sets) then ("-i " +  '"' + analyzing_specific_sets + '"') else ""} \
      ~{if defined(i_raw) then ("-iraw " +  '"' + i_raw + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    res: "<#> (Resolution of matrix in bp or use \\\"-res site\\\" [see below], default: 10000000)"
    window: "<#> (size of region to count tags for overlapping windows, default: same as res)"
    chr: "(create matrix on this chromosome, default: whole genome)"
    start: "<#> (start matrix at this position, default:0)"
    end: "<#> (end matrix at this position, default: no limit)"
    pos: ":xxxxxx-yyyyyy (UCSC formatted position instead of -chr/-start/-end)"
    start_two: "<#>, -end2 <#>, or -pos2 (Use these positions on the\\ny-axis of the matrix.  Otherwise the matrix will be sysmetric)"
    specify_regions_make: "(specify regions to make matrix, unbalanced, use -p2 <peak file>)"
    vs_genome: "(normally makes a square matrix, this will force 2nd set of peaks to be the genome)"
    chop_if_y: "(divide up peaks into regions the size of the resolution, default: use peak midpoints)"
    relative: "(use with -maxDist <#>, outputs diagonal of matrix up to maxDistance)"
    pout: "(output peaks used for analysis as a peak file, -pout2 <file> for 2nd set)"
    ihs_kb: "<#> (normalize counts to \\\"interactions per hundred square kilobases per billion, default)\\nUse '-normTotal <#>' and '-normArea <#>' to modify normalization constants, area in bp^2\\nUse '-normTotal given' and '-normArea given' to disable normalizations"
    raw: "(report raw interaction counts)"
    coverage_norm: "(Only adjust reads based on total interactions per region, default)"
    balance: "(balance resulting matrix - row/column totals the same)"
    dist_norm: "(return log2 obs/expected counts normalized for interaction distance)"
    no_log: "(force matrix to be linear or log2 transformed)"
    corr: "(report Pearson's correlation coeff, use \\\"-corrIters <#>\\\" to recursively calculate)"
    corr_depth: "<#> (merge regions in correlation so that minimum # expected tags per data point)"
    output_file_name: "(Output file name, default: sent to stdout)"
    compaction_stats: "(calculates DLR and ICF compaction scores)"
    dlr_distance: "<#> (Cutoff distance for distal vs. local interactions for DLR, default: 3Mb"
    ifc: "(outputs interaction frequence curve for regions, can set to \\\"auto\\\")"
    four_c: "(outputs tags interacting with specified regions)"
    cpu: "<#> (number of CPUs to use, default: 1)"
    no_matrix: "(skip matrix creation - use if more than 100,000 loci)"
    std: "<#> (# of std deviations from mean interactions per region to exclude, default:8)"
    min: "<#> (minimum fraction of average read depth to include in analysis, default: 0.05)"
    min_expect: "<#> (minimum fraction of average read depth to use for coverage normalization, default: 0.75)"
    override: "(Allow very large matrices to be created... be carful using this)"
    force: "(force the creation of a fresh genome-wide background model)"
    bg_only: "(quit after creating the background model)"
    create_model: "(Create custome bg from regions specified, i.e. -p/-pos)"
    model: "(Use Custom background model, -modelBg for -ped)"
    randomize: "<# reads> (and the output is a PE tag file, initail PE tag directory not used\\nUse makeTagDirectory ... -t outputfile to create the new directory)"
    logp: "(output log p-values from old-style interaction calculations)"
    expected: "(report expected interaction counts based on average profile)"
    raw_and_expected: "(raw counts sent to stdout)"
    cluster: "(cluster regions, uses \\\"-o\\\" to name cdt/gtr files, default: out.cdt)"
    cluster_fixed: "(clusters adjacent regions, good for linear domains)"
    interactions: "(output interactions, add \\\"-center\\\" to adjust pos to avg of reads)"
    p_value: "<#> (p-value cutoff for interactions, default 0.001)"
    zscore: "<#> (z-score cutoff for interactions, default 1.0)"
    mind_ist: "<#> (Minimum interaction distance, default: resolution/2)"
    max_dist: "<#> (Maximum interaction distance, default: -1=none)"
    boundary: "<#> (score boundaries at the given scale i.e. 100000)"
    washu: "(Both matrix and interaction outputs will be in WashH BED format)"
    circo_s: "(creates circos files with the given prefix)"
    plot_tag_densities: "[tag directory 2] ... (will plot tag densities with circos)"
    similar_visiualization_genesg: "(similar to visiualization of genes/-g, but no labels)"
    shows_gene_locations: "(shows gene locations)"
    hist: "<#> (create a histogram matrix around peak positions, # is the resolution)"
    size: "<#> (size of region in histogram, default = 100 * resolution)"
    analyzing_specific_sets: "(for analyzing specific sets of interactions)"
    i_raw: "(output raw reads from interactions, or -irawtags <file>)"
    pe_tag_directory: ""
  }
  output {
    File out_stdout = stdout()
    File out_pout = "${in_pout}"
    File out_output_file_name = "${in_output_file_name}"
    File out_compaction_stats = "${in_compaction_stats}"
    File out_ifc = "${in_ifc}"
    File out_four_c = "${in_four_c}"
    File out_create_model = "${in_create_model}"
    File out_randomize = "${in_randomize}"
    File out_i_raw = "${in_i_raw}"
  }
}