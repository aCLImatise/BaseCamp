version 1.0

task MixcrExportClones {
  input {
    Boolean? verbose
    String? aa_feature
    String? aa_feature_imputed
    String? aa_mutations
    String? aa_mutations_relative
    String? a_vrg_feature_quality
    String? chains
    Boolean? c_alignment
    Boolean? c_alignments
    Boolean? c_best_identity_percent
    Boolean? c_families
    Boolean? c_family
    Boolean? c_gene
    Boolean? c_genes
    Boolean? chit
    Boolean? chits
    Boolean? chit_score
    Boolean? chits_with_score
    Boolean? c_identity_percents
    Boolean? cloneid
    Boolean? count
    Boolean? d_alignment
    Boolean? d_alignments
    Boolean? d_best_identity_percent
    Boolean? default_anchor_points
    Boolean? d_families
    Boolean? d_family
    Boolean? d_gene
    Boolean? d_genes
    Boolean? d_hit
    Boolean? d_hits
    Boolean? dh_its_core
    Boolean? d_hits_with_score
    Boolean? d_identity_percents
    File? force_overwrite
    Boolean? fraction
    Boolean? j_alignment
    Boolean? j_alignments
    Boolean? j_best_identity_percent
    Boolean? j_families
    Boolean? j_family
    Boolean? j_gene
    Boolean? j_genes
    Boolean? jh_it
    Boolean? j_hits
    Boolean? jh_its_core
    Boolean? j_hits_with_score
    Boolean? j_identity_percents
    Int? length_of
    Int? minimal_clone_count
    String? min_feature_quality
    String? mutations_detailed
    String? mutations_detailed_relative
    String? limit
    String? n_feature
    String? n_feature_imputed
    String? n_mutations
    String? n_mutations_relative
    Boolean? no_warnings
    String? filter_out_of_frames
    Int? preset
    File? preset_file
    String? position_in_reference_of
    String? position_of
    Int? minimal_clone_fraction
    String? q_feature
    Boolean? filter_stops
    Boolean? target_qualities
    Boolean? targets
    Boolean? target_sequences
    Boolean? top_chains
    Boolean? with_spaces
    Boolean? v_alignment
    Boolean? v_alignments
    Boolean? v_best_identity_percent
    Boolean? v_families
    Boolean? v_family
    Boolean? v_gene
    Boolean? v_genes
    Boolean? v_hit
    Boolean? v_hits
    Boolean? vh_its_core
    Boolean? v_hits_with_score
    Boolean? v_identity_percents
    Boolean? fo_tv
    String scr
    String export_clones
  }
  command <<<
    mixcr exportClones \
      ~{scr} \
      ~{export_clones} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(aa_feature) then ("-aaFeature " +  '"' + aa_feature + '"') else ""} \
      ~{if defined(aa_feature_imputed) then ("-aaFeatureImputed " +  '"' + aa_feature_imputed + '"') else ""} \
      ~{if defined(aa_mutations) then ("-aaMutations " +  '"' + aa_mutations + '"') else ""} \
      ~{if defined(aa_mutations_relative) then ("-aaMutationsRelative " +  '"' + aa_mutations_relative + '"') else ""} \
      ~{if defined(a_vrg_feature_quality) then ("-avrgFeatureQuality " +  '"' + a_vrg_feature_quality + '"') else ""} \
      ~{if defined(chains) then ("--chains " +  '"' + chains + '"') else ""} \
      ~{if (c_alignment) then "-cAlignment" else ""} \
      ~{if (c_alignments) then "-cAlignments" else ""} \
      ~{if (c_best_identity_percent) then "-cBestIdentityPercent" else ""} \
      ~{if (c_families) then "-cFamilies" else ""} \
      ~{if (c_family) then "-cFamily" else ""} \
      ~{if (c_gene) then "-cGene" else ""} \
      ~{if (c_genes) then "-cGenes" else ""} \
      ~{if (chit) then "-cHit" else ""} \
      ~{if (chits) then "-cHits" else ""} \
      ~{if (chit_score) then "-cHitScore" else ""} \
      ~{if (chits_with_score) then "-cHitsWithScore" else ""} \
      ~{if (c_identity_percents) then "-cIdentityPercents" else ""} \
      ~{if (cloneid) then "-cloneId" else ""} \
      ~{if (count) then "-count" else ""} \
      ~{if (d_alignment) then "-dAlignment" else ""} \
      ~{if (d_alignments) then "-dAlignments" else ""} \
      ~{if (d_best_identity_percent) then "-dBestIdentityPercent" else ""} \
      ~{if (default_anchor_points) then "-defaultAnchorPoints" else ""} \
      ~{if (d_families) then "-dFamilies" else ""} \
      ~{if (d_family) then "-dFamily" else ""} \
      ~{if (d_gene) then "-dGene" else ""} \
      ~{if (d_genes) then "-dGenes" else ""} \
      ~{if (d_hit) then "-dHit" else ""} \
      ~{if (d_hits) then "-dHits" else ""} \
      ~{if (dh_its_core) then "-dHitScore" else ""} \
      ~{if (d_hits_with_score) then "-dHitsWithScore" else ""} \
      ~{if (d_identity_percents) then "-dIdentityPercents" else ""} \
      ~{if (force_overwrite) then "--force-overwrite" else ""} \
      ~{if (fraction) then "-fraction" else ""} \
      ~{if (j_alignment) then "-jAlignment" else ""} \
      ~{if (j_alignments) then "-jAlignments" else ""} \
      ~{if (j_best_identity_percent) then "-jBestIdentityPercent" else ""} \
      ~{if (j_families) then "-jFamilies" else ""} \
      ~{if (j_family) then "-jFamily" else ""} \
      ~{if (j_gene) then "-jGene" else ""} \
      ~{if (j_genes) then "-jGenes" else ""} \
      ~{if (jh_it) then "-jHit" else ""} \
      ~{if (j_hits) then "-jHits" else ""} \
      ~{if (jh_its_core) then "-jHitScore" else ""} \
      ~{if (j_hits_with_score) then "-jHitsWithScore" else ""} \
      ~{if (j_identity_percents) then "-jIdentityPercents" else ""} \
      ~{if defined(length_of) then ("-lengthOf " +  '"' + length_of + '"') else ""} \
      ~{if defined(minimal_clone_count) then ("--minimal-clone-count " +  '"' + minimal_clone_count + '"') else ""} \
      ~{if defined(min_feature_quality) then ("-minFeatureQuality " +  '"' + min_feature_quality + '"') else ""} \
      ~{if defined(mutations_detailed) then ("-mutationsDetailed " +  '"' + mutations_detailed + '"') else ""} \
      ~{if defined(mutations_detailed_relative) then ("-mutationsDetailedRelative " +  '"' + mutations_detailed_relative + '"') else ""} \
      ~{if defined(limit) then ("--limit " +  '"' + limit + '"') else ""} \
      ~{if defined(n_feature) then ("-nFeature " +  '"' + n_feature + '"') else ""} \
      ~{if defined(n_feature_imputed) then ("-nFeatureImputed " +  '"' + n_feature_imputed + '"') else ""} \
      ~{if defined(n_mutations) then ("-nMutations " +  '"' + n_mutations + '"') else ""} \
      ~{if defined(n_mutations_relative) then ("-nMutationsRelative " +  '"' + n_mutations_relative + '"') else ""} \
      ~{if (no_warnings) then "--no-warnings" else ""} \
      ~{if defined(filter_out_of_frames) then ("--filter-out-of-frames " +  '"' + filter_out_of_frames + '"') else ""} \
      ~{if defined(preset) then ("--preset " +  '"' + preset + '"') else ""} \
      ~{if defined(preset_file) then ("--preset-file " +  '"' + preset_file + '"') else ""} \
      ~{if defined(position_in_reference_of) then ("-positionInReferenceOf " +  '"' + position_in_reference_of + '"') else ""} \
      ~{if defined(position_of) then ("-positionOf " +  '"' + position_of + '"') else ""} \
      ~{if defined(minimal_clone_fraction) then ("--minimal-clone-fraction " +  '"' + minimal_clone_fraction + '"') else ""} \
      ~{if defined(q_feature) then ("-qFeature " +  '"' + q_feature + '"') else ""} \
      ~{if (filter_stops) then "--filter-stops" else ""} \
      ~{if (target_qualities) then "-targetQualities" else ""} \
      ~{if (targets) then "-targets" else ""} \
      ~{if (target_sequences) then "-targetSequences" else ""} \
      ~{if (top_chains) then "-topChains" else ""} \
      ~{if (with_spaces) then "--with-spaces" else ""} \
      ~{if (v_alignment) then "-vAlignment" else ""} \
      ~{if (v_alignments) then "-vAlignments" else ""} \
      ~{if (v_best_identity_percent) then "-vBestIdentityPercent" else ""} \
      ~{if (v_families) then "-vFamilies" else ""} \
      ~{if (v_family) then "-vFamily" else ""} \
      ~{if (v_gene) then "-vGene" else ""} \
      ~{if (v_genes) then "-vGenes" else ""} \
      ~{if (v_hit) then "-vHit" else ""} \
      ~{if (v_hits) then "-vHits" else ""} \
      ~{if (vh_its_core) then "-vHitScore" else ""} \
      ~{if (v_hits_with_score) then "-vHitsWithScore" else ""} \
      ~{if (v_identity_percents) then "-vIdentityPercents" else ""} \
      ~{if (fo_tv) then "-fotv" else ""}
  >>>
  parameter_meta {
    verbose: "Verbose warning messages."
    aa_feature: "Export amino acid sequence of specified gene feature"
    aa_feature_imputed: "Export amino acid sequence of specified gene feature using letters from\\ngermline (marked lowercase) for uncovered regions"
    aa_mutations: "Extract amino acid mutations for specific gene feature"
    aa_mutations_relative: "PARAM\\nExtract amino acid mutations for specific gene feature relative to another\\nfeature."
    a_vrg_feature_quality: "Export average quality of specified gene feature"
    chains: "Limit export to specific chain (e.g. TRA or IGH) (fractions will be\\nrecalculated)"
    c_alignment: "Export best C alignment"
    c_alignments: "Export all C alignments"
    c_best_identity_percent: "C best alignment identity percent"
    c_families: "Export all C gene family anmes (e.g. TRBV12 for TRBV12-3*00)"
    c_family: "Export best C hit family name (e.g. TRBV12 for TRBV12-3*00)"
    c_gene: "Export best C hit gene name (e.g. TRBV12-3 for TRBV12-3*00)"
    c_genes: "Export all C gene names (e.g. TRBV12-3 for TRBV12-3*00)"
    chit: "Export best C hit"
    chits: "Export all C hits"
    chit_score: "Export score for best C hit"
    chits_with_score: "Export all C hits with score"
    c_identity_percents: "C alignment identity percents"
    cloneid: "Unique clone identifier"
    count: "Export clone count"
    d_alignment: "Export best D alignment"
    d_alignments: "Export all D alignments"
    d_best_identity_percent: "D best alignment identity percent"
    default_anchor_points: "Outputs a list of default reference points (like CDR2Begin, FR4End, etc.\\nsee documentation for the full list and formatting)"
    d_families: "Export all D gene family anmes (e.g. TRBV12 for TRBV12-3*00)"
    d_family: "Export best D hit family name (e.g. TRBV12 for TRBV12-3*00)"
    d_gene: "Export best D hit gene name (e.g. TRBV12-3 for TRBV12-3*00)"
    d_genes: "Export all D gene names (e.g. TRBV12-3 for TRBV12-3*00)"
    d_hit: "Export best D hit"
    d_hits: "Export all D hits"
    dh_its_core: "Export score for best D hit"
    d_hits_with_score: "Export all D hits with score"
    d_identity_percents: "D alignment identity percents"
    force_overwrite: "Force overwrite of output file(s)."
    fraction: "Export clone fraction"
    j_alignment: "Export best J alignment"
    j_alignments: "Export all J alignments"
    j_best_identity_percent: "J best alignment identity percent"
    j_families: "Export all J gene family anmes (e.g. TRBV12 for TRBV12-3*00)"
    j_family: "Export best J hit family name (e.g. TRBV12 for TRBV12-3*00)"
    j_gene: "Export best J hit gene name (e.g. TRBV12-3 for TRBV12-3*00)"
    j_genes: "Export all J gene names (e.g. TRBV12-3 for TRBV12-3*00)"
    jh_it: "Export best J hit"
    j_hits: "Export all J hits"
    jh_its_core: "Export score for best J hit"
    j_hits_with_score: "Export all J hits with score"
    j_identity_percents: "J alignment identity percents"
    length_of: "Export length of specified gene feature."
    minimal_clone_count: "Filter clones by minimal clone read count"
    min_feature_quality: "Export minimal quality of specified gene feature"
    mutations_detailed: "Detailed list of nucleotide and corresponding amino acid mutations. Format\\n<nt_mutation>:<aa_mutation_individual>:<aa_mutation_cumulative>, where\\n<aa_mutation_individual> is an expected amino acid mutation given no\\nother mutations have occurred, and <aa_mutation_cumulative> amino acid\\nmutation is the observed amino acid mutation combining effect from all\\nother. WARNING: format may change in following versions."
    mutations_detailed_relative: "PARAM\\nDetailed list of nucleotide and corresponding amino acid mutations written,\\npositions relative to specified gene feature. Format <nt_mutation>:\\n<aa_mutation_individual>:<aa_mutation_cumulative>, where\\n<aa_mutation_individual> is an expected amino acid mutation given no\\nother mutations have occurred, and <aa_mutation_cumulative> amino acid\\nmutation is the observed amino acid mutation combining effect from all\\nother. WARNING: format may change in following versions."
    limit: "Output only first N records"
    n_feature: "Export nucleotide sequence of specified gene feature"
    n_feature_imputed: "Export nucleotide sequence of specified gene feature using letters from\\ngermline (marked lowercase) for uncovered regions"
    n_mutations: "Extract nucleotide mutations for specific gene feature; relative to\\ngermline sequence."
    n_mutations_relative: "PARAM\\nExtract nucleotide mutations for specific gene feature relative to another\\nfeature."
    no_warnings: "Suppress all warning messages."
    filter_out_of_frames: "clones with out-of-frame clone sequences (fractions will be\\nrecalculated)"
    preset: "Specify preset of export fields (possible values: 'full', 'min'; 'full' by\\ndefault)"
    preset_file: "Specify preset file of export fields"
    position_in_reference_of: "Export position of specified reference point inside referencesequences\\n(clonal sequence / read sequence)."
    position_of: "Export position of specified reference point inside targetsequences (clonal\\nsequence / read sequence)."
    minimal_clone_fraction: "Filter clones by minimal clone fraction"
    q_feature: "Export quality string of specified gene feature"
    filter_stops: "Exclude sequences containing stop codons (fractions will be recalculated)"
    target_qualities: "Export aligned sequence (target) qualities, separated with comma"
    targets: "Export number of targets"
    target_sequences: "Export aligned sequences (targets), separated with comma"
    top_chains: "Top chains"
    with_spaces: "Output column headers with spaces."
    v_alignment: "Export best V alignment"
    v_alignments: "Export all V alignments"
    v_best_identity_percent: "V best alignment identity percent"
    v_families: "Export all V gene family anmes (e.g. TRBV12 for TRBV12-3*00)"
    v_family: "Export best V hit family name (e.g. TRBV12 for TRBV12-3*00)"
    v_gene: "Export best V hit gene name (e.g. TRBV12-3 for TRBV12-3*00)"
    v_genes: "Export all V gene names (e.g. TRBV12-3 for TRBV12-3*00)"
    v_hit: "Export best V hit"
    v_hits: "Export all V hits"
    vh_its_core: "Export score for best V hit"
    v_hits_with_score: "Export all V hits with score"
    v_identity_percents: "V alignment identity percents"
    fo_tv: ""
    scr: ""
    export_clones: ""
  }
  output {
    File out_stdout = stdout()
    File out_force_overwrite = "${in_force_overwrite}"
  }
}