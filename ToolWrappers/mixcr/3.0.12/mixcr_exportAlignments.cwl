class: CommandLineTool
id: mixcr_exportAlignments.cwl
inputs:
- id: in_verbose
  doc: Verbose warning messages.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_aa_feature
  doc: Export amino acid sequence of specified gene feature
  type: string
  inputBinding:
    prefix: -aaFeature
- id: in_aa_feature_imputed
  doc: "Export amino acid sequence of specified gene feature using letters from\n\
    germline (marked lowercase) for uncovered regions"
  type: string
  inputBinding:
    prefix: -aaFeatureImputed
- id: in_aa_mutations
  doc: Extract amino acid mutations for specific gene feature
  type: string
  inputBinding:
    prefix: -aaMutations
- id: in_aa_mutations_relative
  doc: "PARAM\nExtract amino acid mutations for specific gene feature relative to\
    \ another\nfeature."
  type: string
  inputBinding:
    prefix: -aaMutationsRelative
- id: in_a_vrg_feature_quality
  doc: Export average quality of specified gene feature
  type: string
  inputBinding:
    prefix: -avrgFeatureQuality
- id: in_chains
  doc: "Limit export to specific chain (e.g. TRA or IGH) (fractions will be\nrecalculated)"
  type: string
  inputBinding:
    prefix: --chains
- id: in_c_alignment
  doc: Export best C alignment
  type: boolean
  inputBinding:
    prefix: -cAlignment
- id: in_c_alignments
  doc: Export all C alignments
  type: boolean
  inputBinding:
    prefix: -cAlignments
- id: in_c_best_identity_percent
  doc: C best alignment identity percent
  type: boolean
  inputBinding:
    prefix: -cBestIdentityPercent
- id: in_c_families
  doc: Export all C gene family anmes (e.g. TRBV12 for TRBV12-3*00)
  type: boolean
  inputBinding:
    prefix: -cFamilies
- id: in_c_family
  doc: Export best C hit family name (e.g. TRBV12 for TRBV12-3*00)
  type: boolean
  inputBinding:
    prefix: -cFamily
- id: in_c_gene
  doc: Export best C hit gene name (e.g. TRBV12-3 for TRBV12-3*00)
  type: boolean
  inputBinding:
    prefix: -cGene
- id: in_c_genes
  doc: Export all C gene names (e.g. TRBV12-3 for TRBV12-3*00)
  type: boolean
  inputBinding:
    prefix: -cGenes
- id: in_chit
  doc: Export best C hit
  type: boolean
  inputBinding:
    prefix: -cHit
- id: in_chits
  doc: Export all C hits
  type: boolean
  inputBinding:
    prefix: -cHits
- id: in_chit_score
  doc: Export score for best C hit
  type: boolean
  inputBinding:
    prefix: -cHitScore
- id: in_chits_with_score
  doc: Export all C hits with score
  type: boolean
  inputBinding:
    prefix: -cHitsWithScore
- id: in_c_identity_percents
  doc: C alignment identity percents
  type: boolean
  inputBinding:
    prefix: -cIdentityPercents
- id: in_cloneid
  doc: "To which clone alignment was attached (make sure using .clna file as input\n\
    for exportAlignments)"
  type: boolean
  inputBinding:
    prefix: -cloneId
- id: in_cloneid_with_mapping_type
  doc: "To which clone alignment was attached with additional info on mapping type\n\
    (make sure using .clna file as input for exportAlignments)"
  type: boolean
  inputBinding:
    prefix: -cloneIdWithMappingType
- id: in_d_alignment
  doc: Export best D alignment
  type: boolean
  inputBinding:
    prefix: -dAlignment
- id: in_d_alignments
  doc: Export all D alignments
  type: boolean
  inputBinding:
    prefix: -dAlignments
- id: in_d_best_identity_percent
  doc: D best alignment identity percent
  type: boolean
  inputBinding:
    prefix: -dBestIdentityPercent
- id: in_default_anchor_points
  doc: "Outputs a list of default reference points (like CDR2Begin, FR4End, etc.\n\
    see documentation for the full list and formatting)"
  type: boolean
  inputBinding:
    prefix: -defaultAnchorPoints
- id: in_descr_r_one
  doc: Export description line from initial .fasta or .fastq file (deprecated)
  type: boolean
  inputBinding:
    prefix: -descrR1
- id: in_descr_r_two
  doc: Export description line from initial .fasta or .fastq file (deprecated)
  type: boolean
  inputBinding:
    prefix: -descrR2
- id: in_descr_sr_one
  doc: "Export description lines from initial .fasta or .fastq file for R1 reads\n\
    (only available if -OsaveOriginalReads=true was used in align command)"
  type: boolean
  inputBinding:
    prefix: -descrsR1
- id: in_descr_sr_two
  doc: "Export description lines from initial .fastq file for R2 reads (only\navailable\
    \ if -OsaveOriginalReads=true was used in align command)"
  type: boolean
  inputBinding:
    prefix: -descrsR2
- id: in_d_families
  doc: Export all D gene family anmes (e.g. TRBV12 for TRBV12-3*00)
  type: boolean
  inputBinding:
    prefix: -dFamilies
- id: in_d_family
  doc: Export best D hit family name (e.g. TRBV12 for TRBV12-3*00)
  type: boolean
  inputBinding:
    prefix: -dFamily
- id: in_d_gene
  doc: Export best D hit gene name (e.g. TRBV12-3 for TRBV12-3*00)
  type: boolean
  inputBinding:
    prefix: -dGene
- id: in_d_genes
  doc: Export all D gene names (e.g. TRBV12-3 for TRBV12-3*00)
  type: boolean
  inputBinding:
    prefix: -dGenes
- id: in_d_hit
  doc: Export best D hit
  type: boolean
  inputBinding:
    prefix: -dHit
- id: in_d_hits
  doc: Export all D hits
  type: boolean
  inputBinding:
    prefix: -dHits
- id: in_dh_its_core
  doc: Export score for best D hit
  type: boolean
  inputBinding:
    prefix: -dHitScore
- id: in_d_hits_with_score
  doc: Export all D hits with score
  type: boolean
  inputBinding:
    prefix: -dHitsWithScore
- id: in_d_identity_percents
  doc: D alignment identity percents
  type: boolean
  inputBinding:
    prefix: -dIdentityPercents
- id: in_force_overwrite
  doc: Force overwrite of output file(s).
  type: File
  inputBinding:
    prefix: --force-overwrite
- id: in_j_alignment
  doc: Export best J alignment
  type: boolean
  inputBinding:
    prefix: -jAlignment
- id: in_j_alignments
  doc: Export all J alignments
  type: boolean
  inputBinding:
    prefix: -jAlignments
- id: in_j_best_identity_percent
  doc: J best alignment identity percent
  type: boolean
  inputBinding:
    prefix: -jBestIdentityPercent
- id: in_j_families
  doc: Export all J gene family anmes (e.g. TRBV12 for TRBV12-3*00)
  type: boolean
  inputBinding:
    prefix: -jFamilies
- id: in_j_family
  doc: Export best J hit family name (e.g. TRBV12 for TRBV12-3*00)
  type: boolean
  inputBinding:
    prefix: -jFamily
- id: in_j_gene
  doc: Export best J hit gene name (e.g. TRBV12-3 for TRBV12-3*00)
  type: boolean
  inputBinding:
    prefix: -jGene
- id: in_j_genes
  doc: Export all J gene names (e.g. TRBV12-3 for TRBV12-3*00)
  type: boolean
  inputBinding:
    prefix: -jGenes
- id: in_jh_it
  doc: Export best J hit
  type: boolean
  inputBinding:
    prefix: -jHit
- id: in_j_hits
  doc: Export all J hits
  type: boolean
  inputBinding:
    prefix: -jHits
- id: in_jh_its_core
  doc: Export score for best J hit
  type: boolean
  inputBinding:
    prefix: -jHitScore
- id: in_j_hits_with_score
  doc: Export all J hits with score
  type: boolean
  inputBinding:
    prefix: -jHitsWithScore
- id: in_j_identity_percents
  doc: J alignment identity percents
  type: boolean
  inputBinding:
    prefix: -jIdentityPercents
- id: in_length_of
  doc: Export length of specified gene feature.
  type: long
  inputBinding:
    prefix: -lengthOf
- id: in_min_feature_quality
  doc: Export minimal quality of specified gene feature
  type: string
  inputBinding:
    prefix: -minFeatureQuality
- id: in_mutations_detailed
  doc: "Detailed list of nucleotide and corresponding amino acid mutations. Format\n\
    <nt_mutation>:<aa_mutation_individual>:<aa_mutation_cumulative>, where\n<aa_mutation_individual>\
    \ is an expected amino acid mutation given no\nother mutations have occurred,\
    \ and <aa_mutation_cumulative> amino acid\nmutation is the observed amino acid\
    \ mutation combining effect from all\nother. WARNING: format may change in following\
    \ versions."
  type: string
  inputBinding:
    prefix: -mutationsDetailed
- id: in_mutations_detailed_relative
  doc: "PARAM\nDetailed list of nucleotide and corresponding amino acid mutations\
    \ written,\npositions relative to specified gene feature. Format <nt_mutation>:\n\
    <aa_mutation_individual>:<aa_mutation_cumulative>, where\n<aa_mutation_individual>\
    \ is an expected amino acid mutation given no\nother mutations have occurred,\
    \ and <aa_mutation_cumulative> amino acid\nmutation is the observed amino acid\
    \ mutation combining effect from all\nother. WARNING: format may change in following\
    \ versions."
  type: string
  inputBinding:
    prefix: -mutationsDetailedRelative
- id: in_limit
  doc: Output only first N records
  type: string
  inputBinding:
    prefix: --limit
- id: in_n_feature
  doc: Export nucleotide sequence of specified gene feature
  type: string
  inputBinding:
    prefix: -nFeature
- id: in_n_feature_imputed
  doc: "Export nucleotide sequence of specified gene feature using letters from\n\
    germline (marked lowercase) for uncovered regions"
  type: string
  inputBinding:
    prefix: -nFeatureImputed
- id: in_n_mutations
  doc: "Extract nucleotide mutations for specific gene feature; relative to\ngermline\
    \ sequence."
  type: string
  inputBinding:
    prefix: -nMutations
- id: in_n_mutations_relative
  doc: "PARAM\nExtract nucleotide mutations for specific gene feature relative to\
    \ another\nfeature."
  type: string
  inputBinding:
    prefix: -nMutationsRelative
- id: in_no_warnings
  doc: Suppress all warning messages.
  type: boolean
  inputBinding:
    prefix: --no-warnings
- id: in_preset
  doc: "Specify preset of export fields (possible values: 'full', 'min'; 'full' by\n\
    default)"
  type: long
  inputBinding:
    prefix: --preset
- id: in_preset_file
  doc: Specify preset file of export fields
  type: File
  inputBinding:
    prefix: --preset-file
- id: in_position_in_reference_of
  doc: "Export position of specified reference point inside referencesequences\n(clonal\
    \ sequence / read sequence)."
  type: string
  inputBinding:
    prefix: -positionInReferenceOf
- id: in_position_of
  doc: "Export position of specified reference point inside targetsequences (clonal\n\
    sequence / read sequence)."
  type: string
  inputBinding:
    prefix: -positionOf
- id: in_q_feature
  doc: Export quality string of specified gene feature
  type: string
  inputBinding:
    prefix: -qFeature
- id: in_read_history
  doc: Export read history
  type: boolean
  inputBinding:
    prefix: -readHistory
- id: in_read_id
  doc: Export id of read corresponding to alignment (deprecated)
  type: boolean
  inputBinding:
    prefix: -readId
- id: in_read_ids
  doc: Export id(s) of read(s) corresponding to alignment
  type: boolean
  inputBinding:
    prefix: -readIds
- id: in_target_qualities
  doc: Export aligned sequence (target) qualities, separated with comma
  type: boolean
  inputBinding:
    prefix: -targetQualities
- id: in_targets
  doc: Export number of targets
  type: boolean
  inputBinding:
    prefix: -targets
- id: in_target_sequences
  doc: Export aligned sequences (targets), separated with comma
  type: boolean
  inputBinding:
    prefix: -targetSequences
- id: in_top_chains
  doc: Top chains
  type: boolean
  inputBinding:
    prefix: -topChains
- id: in_with_spaces
  doc: Output column headers with spaces.
  type: boolean
  inputBinding:
    prefix: --with-spaces
- id: in_v_alignment
  doc: Export best V alignment
  type: boolean
  inputBinding:
    prefix: -vAlignment
- id: in_v_alignments
  doc: Export all V alignments
  type: boolean
  inputBinding:
    prefix: -vAlignments
- id: in_v_best_identity_percent
  doc: V best alignment identity percent
  type: boolean
  inputBinding:
    prefix: -vBestIdentityPercent
- id: in_v_families
  doc: Export all V gene family anmes (e.g. TRBV12 for TRBV12-3*00)
  type: boolean
  inputBinding:
    prefix: -vFamilies
- id: in_v_family
  doc: Export best V hit family name (e.g. TRBV12 for TRBV12-3*00)
  type: boolean
  inputBinding:
    prefix: -vFamily
- id: in_v_gene
  doc: Export best V hit gene name (e.g. TRBV12-3 for TRBV12-3*00)
  type: boolean
  inputBinding:
    prefix: -vGene
- id: in_v_genes
  doc: Export all V gene names (e.g. TRBV12-3 for TRBV12-3*00)
  type: boolean
  inputBinding:
    prefix: -vGenes
- id: in_v_hit
  doc: Export best V hit
  type: boolean
  inputBinding:
    prefix: -vHit
- id: in_v_hits
  doc: Export all V hits
  type: boolean
  inputBinding:
    prefix: -vHits
- id: in_vh_its_core
  doc: Export score for best V hit
  type: boolean
  inputBinding:
    prefix: -vHitScore
- id: in_v_hits_with_score
  doc: Export all V hits with score
  type: boolean
  inputBinding:
    prefix: -vHitsWithScore
- id: in_v_identity_percents
  doc: V alignment identity percents
  type: boolean
  inputBinding:
    prefix: -vIdentityPercents
- id: in_fv
  doc: ''
  type: boolean
  inputBinding:
    prefix: -fv
- id: in_scr
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_export_alignments
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_force_overwrite
  doc: Force overwrite of output file(s).
  type: File
  outputBinding:
    glob: $(inputs.in_force_overwrite)
cwlVersion: v1.1
baseCommand:
- mixcr
- exportAlignments
