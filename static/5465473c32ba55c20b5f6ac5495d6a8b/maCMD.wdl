version 1.0

task MaCMD {
  input {
    String? presetting
    File? index
    File? in
    File? mate_in
    Boolean? create_index
    File? sam_file_name
    Int? number_of_threads
    Boolean? help
    Boolean? use_paired_reads
    Int? standard_deviation_of_paired_reads
    Float? score_factor_for_paired_reads
    Boolean? check_for_consistency
    String? seeding_technique
    Int? minimal_seed_length
    Int? minimal_ambiguity
    Int? maximal_ambiguity
    Boolean? skip_ambiguous_seeds
    Int? seeding_drop_off_a_minimal_seed_size
    Float? seeding_drop_off_b_factor
    Boolean? maximal_number_of_soc
    Int? fixed_soc_width
    Int? maximal_number_of_reported_alignments
    Int? minimal_alignment_score
    Boolean? omit_secondary_alignments
    Boolean? omit_supplementary_alignments
    Float? maximal_supplementary_overlap
    Int? number_supplementary_alignments
    Boolean? emulate_ng_mlr
    Boolean? output_long_cigars_in_cg_tag
    Float? soc_score_drop_off
    Int? minimal_harmonization_score
    Int? relative_minimal_harmonization_score
    Float? harmonization_drop_off_a_score_difference
    Int? harmonization_drop_off_b_look_ahead
    Int? harmonization_score_drop_off_minimal_query_length
    Float? artifact_filter_a_maximal_delta_distance
    Int? artifact_filter_b_minimal_delta_distance
    Boolean? pick_local_seed_set_a_enabled
    Boolean? pick_local_seed_set_b_optimistic_gap_estimation
    Int? pick_local_seed_set_c_maximal_gap_penalty
    Int? maximal_gap_size
    Int? minimum_genome_size_for_heuristics
    Boolean? disable_all_heuristics
    Int? match_score
    Int? mismatch_penalty
    Int? gap_penalty
    Int? extend_penalty
    Int? second_gap_penalty
    Int? second_extend_penalty
    Int? padding
    Int? bandwidth_for_extensions
    Int? minimal_bandwidth_in_gaps
    Int? z_drop
    Boolean? detect_small_inversions
    Int? z_drop_inversions
    String limit_dot
  }
  command <<<
    maCMD \
      ~{limit_dot} \
      ~{if defined(presetting) then ("--Presetting " +  '"' + presetting + '"') else ""} \
      ~{if defined(index) then ("--Index " +  '"' + index + '"') else ""} \
      ~{if defined(in) then ("--In " +  '"' + in + '"') else ""} \
      ~{if defined(mate_in) then ("--Mate_In " +  '"' + mate_in + '"') else ""} \
      ~{if (create_index) then "--Create_Index" else ""} \
      ~{if defined(sam_file_name) then ("--SAM_File_name " +  '"' + sam_file_name + '"') else ""} \
      ~{if defined(number_of_threads) then ("--Number_of_Threads " +  '"' + number_of_threads + '"') else ""} \
      ~{if defined(help) then ("--Help " +  '"' + help + '"') else ""} \
      ~{if defined(use_paired_reads) then ("--Use_Paired_Reads " +  '"' + use_paired_reads + '"') else ""} \
      ~{if defined(standard_deviation_of_paired_reads) then ("--Standard_Deviation_of_Paired_Reads " +  '"' + standard_deviation_of_paired_reads + '"') else ""} \
      ~{if defined(score_factor_for_paired_reads) then ("--Score_Factor_for_Paired_Reads " +  '"' + score_factor_for_paired_reads + '"') else ""} \
      ~{if defined(check_for_consistency) then ("--Check_for_Consistency " +  '"' + check_for_consistency + '"') else ""} \
      ~{if defined(seeding_technique) then ("--Seeding_Technique " +  '"' + seeding_technique + '"') else ""} \
      ~{if defined(minimal_seed_length) then ("--Minimal_Seed_Length " +  '"' + minimal_seed_length + '"') else ""} \
      ~{if defined(minimal_ambiguity) then ("--Minimal_Ambiguity " +  '"' + minimal_ambiguity + '"') else ""} \
      ~{if defined(maximal_ambiguity) then ("--Maximal_Ambiguity " +  '"' + maximal_ambiguity + '"') else ""} \
      ~{if defined(skip_ambiguous_seeds) then ("--Skip_Ambiguous_Seeds " +  '"' + skip_ambiguous_seeds + '"') else ""} \
      ~{if defined(seeding_drop_off_a_minimal_seed_size) then ("--Seeding_Drop-off_A_-_Minimal_Seed_Size " +  '"' + seeding_drop_off_a_minimal_seed_size + '"') else ""} \
      ~{if defined(seeding_drop_off_b_factor) then ("--Seeding_Drop-off_B_-_Factor " +  '"' + seeding_drop_off_b_factor + '"') else ""} \
      ~{if (maximal_number_of_soc) then "--Maximal_Number_of_SoC" else ""} \
      ~{if defined(fixed_soc_width) then ("--Fixed_SoC_Width " +  '"' + fixed_soc_width + '"') else ""} \
      ~{if defined(maximal_number_of_reported_alignments) then ("--Maximal_Number_of_Reported_Alignments " +  '"' + maximal_number_of_reported_alignments + '"') else ""} \
      ~{if defined(minimal_alignment_score) then ("--Minimal_Alignment_Score " +  '"' + minimal_alignment_score + '"') else ""} \
      ~{if defined(omit_secondary_alignments) then ("--Omit_Secondary_Alignments " +  '"' + omit_secondary_alignments + '"') else ""} \
      ~{if defined(omit_supplementary_alignments) then ("--Omit_Supplementary_Alignments " +  '"' + omit_supplementary_alignments + '"') else ""} \
      ~{if defined(maximal_supplementary_overlap) then ("--Maximal_Supplementary_Overlap " +  '"' + maximal_supplementary_overlap + '"') else ""} \
      ~{if defined(number_supplementary_alignments) then ("--Number_Supplementary_Alignments " +  '"' + number_supplementary_alignments + '"') else ""} \
      ~{if (emulate_ng_mlr) then "--Emulate_NGMLR" else ""} \
      ~{if defined(output_long_cigars_in_cg_tag) then ("--Output_long_cigars_in_CG_tag " +  '"' + output_long_cigars_in_cg_tag + '"') else ""} \
      ~{if defined(soc_score_drop_off) then ("--SoC_Score_Drop-off " +  '"' + soc_score_drop_off + '"') else ""} \
      ~{if defined(minimal_harmonization_score) then ("--Minimal_Harmonization_Score " +  '"' + minimal_harmonization_score + '"') else ""} \
      ~{if defined(relative_minimal_harmonization_score) then ("--Relative_Minimal_Harmonization_Score " +  '"' + relative_minimal_harmonization_score + '"') else ""} \
      ~{if defined(harmonization_drop_off_a_score_difference) then ("--Harmonization_Drop-off_A_-_Score_Difference " +  '"' + harmonization_drop_off_a_score_difference + '"') else ""} \
      ~{if defined(harmonization_drop_off_b_look_ahead) then ("--Harmonization_Drop-off_B_-_Lookahead " +  '"' + harmonization_drop_off_b_look_ahead + '"') else ""} \
      ~{if defined(harmonization_score_drop_off_minimal_query_length) then ("--Harmonization_Score_Drop-off_-_Minimal_Query_Length " +  '"' + harmonization_score_drop_off_minimal_query_length + '"') else ""} \
      ~{if defined(artifact_filter_a_maximal_delta_distance) then ("--Artifact_Filter_A_-_Maximal_Delta_Distance " +  '"' + artifact_filter_a_maximal_delta_distance + '"') else ""} \
      ~{if defined(artifact_filter_b_minimal_delta_distance) then ("--Artifact_Filter_B_-_Minimal_Delta_Distance " +  '"' + artifact_filter_b_minimal_delta_distance + '"') else ""} \
      ~{if defined(pick_local_seed_set_a_enabled) then ("--Pick_Local_Seed_Set_A_-_Enabled " +  '"' + pick_local_seed_set_a_enabled + '"') else ""} \
      ~{if defined(pick_local_seed_set_b_optimistic_gap_estimation) then ("--Pick_Local_Seed_Set_B_-_Optimistic_Gap_Estimation " +  '"' + pick_local_seed_set_b_optimistic_gap_estimation + '"') else ""} \
      ~{if defined(pick_local_seed_set_c_maximal_gap_penalty) then ("--Pick_Local_Seed_Set_C_-_Maximal_Gap_Penalty " +  '"' + pick_local_seed_set_c_maximal_gap_penalty + '"') else ""} \
      ~{if defined(maximal_gap_size) then ("--Maximal_Gap_Size " +  '"' + maximal_gap_size + '"') else ""} \
      ~{if defined(minimum_genome_size_for_heuristics) then ("--Minimum_Genome_Size_for_Heuristics " +  '"' + minimum_genome_size_for_heuristics + '"') else ""} \
      ~{if defined(disable_all_heuristics) then ("--Disable_All_Heuristics " +  '"' + disable_all_heuristics + '"') else ""} \
      ~{if defined(match_score) then ("--Match_Score " +  '"' + match_score + '"') else ""} \
      ~{if defined(mismatch_penalty) then ("--Mismatch_Penalty " +  '"' + mismatch_penalty + '"') else ""} \
      ~{if defined(gap_penalty) then ("--Gap_penalty " +  '"' + gap_penalty + '"') else ""} \
      ~{if defined(extend_penalty) then ("--Extend_Penalty " +  '"' + extend_penalty + '"') else ""} \
      ~{if defined(second_gap_penalty) then ("--Second_Gap_Penalty " +  '"' + second_gap_penalty + '"') else ""} \
      ~{if defined(second_extend_penalty) then ("--Second_Extend_Penalty " +  '"' + second_extend_penalty + '"') else ""} \
      ~{if defined(padding) then ("--Padding " +  '"' + padding + '"') else ""} \
      ~{if defined(bandwidth_for_extensions) then ("--Bandwidth_for_Extensions " +  '"' + bandwidth_for_extensions + '"') else ""} \
      ~{if defined(minimal_bandwidth_in_gaps) then ("--Minimal_Bandwidth_in_Gaps " +  '"' + minimal_bandwidth_in_gaps + '"') else ""} \
      ~{if defined(z_drop) then ("--Z_Drop " +  '"' + z_drop + '"') else ""} \
      ~{if defined(detect_small_inversions) then ("--Detect_Small_Inversions " +  '"' + detect_small_inversions + '"') else ""} \
      ~{if defined(z_drop_inversions) then ("--Z_Drop_Inversions " +  '"' + z_drop_inversions + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    presetting: "[Default]              Optimize aligner parameters for a selected\\nsequencing technique. Available presettings are:\\n'Default', 'Illumina', 'Illumina_Paired',\\n'Nanopore', 'PacBio'."
    index: "[]                     Filename of FMD-index. (A FMD-index can be\\ngenerated via the --Create_Index option.) This\\noption must be set."
    in: "[]                        Filenames of Fasta/Fastq files containing reads.\\ngz-compressed files are automatically decompressed.\\nMultiple files can be specified by a comma\\nseparated list. At least one file name must be\\nprovided."
    mate_in: "[]                   Filenames of the mates in the case of paired reads.\\nIf this option is set, the aligner switches to\\npaired mode automatically. The number of reads\\ngiven as mates must match the accumulated number of\\nreads provided via the 'in'-option."
    create_index: "<fasta_file_name,output_folder,index_name> []\\nGenerate a FMD-index for a Fasta file.\\n'fasta_file_name' has to be the file-path of the\\nFasta file holding the genome used for index\\ncreation. 'output_folder' is the folder-path of the\\nlocation used for index storage. 'index_name' is\\nthe name used for identifying the new FMD-Index. In\\nthe context of alignments, the genome-name is used\\nfor FMD-index selection."
    sam_file_name: "[ma_out.sam]\\nName of the SAM file alignments shall be written\\nto."
    number_of_threads: "[8]              Number of threads used in the context of\\nalignments. This options is only available, if 'use\\nall processor cores' is off."
    help: "[true]                       Print the complete help text."
    use_paired_reads: "[false]              If your reads occur as paired reads, activate this"
    standard_deviation_of_paired_reads: "[150]\\n<val> represents the standard deviation for the\\ndistance between paired reads. Used in the context\\nof the computation of the mapping quality and for\\npicking optimal alignment pairs."
    score_factor_for_paired_reads: "[1.25]\\nThis factor is multiplied to the score of\\nsuccessfully paired reads. Used in the context of\\nthe computation of the mapping quality and for\\npicking optimal alignment pairs. [val] < 1 results\\nin penalty; [val] > 1 results in bonus."
    check_for_consistency: "[false]         Check if both paired read files comprise the same\\nnumber of reads. (Intended for debugging.)"
    seeding_technique: "[maxSpan]       Technique used for the initial seeding. Available\\ntechniques are: maxSpan and SMEMs."
    minimal_seed_length: "[16]           All seeds with size smaller than 'minimal seed\\nlength' are discarded."
    minimal_ambiguity: "[0]                  During the extension of seeds using the FMD-index:\\nWith increasing extension width, the number of\\noccurrences of corresponding seeds on the reference\\nmontonically decreases. Keep extending, while the\\nnumber of occurrences is higher than 'Minimal\\nAmbiguity'. (For details see the MA-Handbook.)"
    maximal_ambiguity: "[100]                Discard seeds that occur more than 'Maximal\\nambiguity' time on the reference. Set to zero to\\ndisable."
    skip_ambiguous_seeds: "[false]          Enabled: Discard all seeds that are more ambiguous\\nthan [Maximal Ambiguity]. Disabled: sample [Maximal\\nAmbiguity] random seeds from too ambiguous seeds."
    seeding_drop_off_a_minimal_seed_size: "[15]\\nHeuristic runtime optimization: For a given read R,\\nlet N be the number of seeds of size >= [val].\\nDiscard R, if N < [length(R)] * [Seeding drop-off\\nB]."
    seeding_drop_off_b_factor: "[0.005]\\nHeuristic runtime optimization: Factor for seed\\ndrop-off calculation. For more information see\\nparameter [Seeding drop-off A]."
    maximal_number_of_soc: "'s <int> [30]       Only consider the <val> best scored SoC's. 0 = no"
    fixed_soc_width: "[0]                    Set the SoC width to a fixed value. 0 = use the\\nformula given in the paper. This parameter is\\nintended for debugging purposes."
    maximal_number_of_reported_alignments: "[0]\\nDo not output more than <val> alignments. Set to\\nzero for unlimited output."
    minimal_alignment_score: "[75]           Suppress the output of alignments with a score\\nbelow val."
    omit_secondary_alignments: "[false]     Suppress the output of secondary alignments."
    omit_supplementary_alignments: "[false]\\nSuppress the output of supplementary alignments."
    maximal_supplementary_overlap: "[0.1]\\nAn non-primary alignment A is considered\\nsupplementary, if less than val percent of A\\noverlap with the primary alignment on the query.\\nOtherwise A is considered secondary."
    number_supplementary_alignments: "[1]\\nMaximal Number of supplementary alignments per\\nprimary alignment."
    emulate_ng_mlr: "'s_tag_output <bool> [false]\\nOutput SAM tags as NGMLR would. Activate this if\\nyou want to use MA in combination with Sniffles.\\nEnableing this will drastically increase the size\\nof the output file."
    output_long_cigars_in_cg_tag: "[true]\\nSome software crashes if a cigar is too long.\\nEnabeling this flag makes MA output that the entire\\nread was soft clipped in the regular cigar field if\\nthe cigar would exceed 65536 operations. The actual\\ncigar is then given in the CG:B:I tag as a comma\\nseperated binary list."
    soc_score_drop_off: "[0.1]            Let x be the maximal encountered SoC score. Stop\\nharmonizing SoC's if there is a SoC with a score\\nlower than <val>*x."
    minimal_harmonization_score: "[18]       Discard all harmonized SoC's with scores lower than\\n<val>. Only keep detected inversions with a score\\n>= <val> * [Match Score]."
    relative_minimal_harmonization_score: "[0.002]\\nDiscard all harmonized SoC's with scores lower than\\nlength(read)*<val>."
    harmonization_drop_off_a_score_difference: "[0.0001]\\nLet x be the maximal encountered harmonization\\nscore. Stop harmonizing further SoC's if there are\\n<Harmonization Drop-off B> SoC's with lower scores\\nthan x-<readlength>*<val> in a row."
    harmonization_drop_off_b_look_ahead: "[3]\\nSee Harmonization Drop-off A."
    harmonization_score_drop_off_minimal_query_length: "[800]\\nFor reads of length >= [val]: Ignore all SoC's with\\nharmonization scores lower than the current maximal\\nscore. 0 = disabled."
    artifact_filter_a_maximal_delta_distance: "[0.1]\\nFilter seeds if the difference between the delta\\ndistance to it's predecessor and successor is less\\nthen [val] percent (set to 1 to disable filter) and\\nthe delta distance to it's pre- and successor is\\nmore than [Artifact Filter B] nt."
    artifact_filter_b_minimal_delta_distance: "[16]\\nSee Artifact Filter A"
    pick_local_seed_set_a_enabled: "[false]\\n<val> = true enables local seed set computation."
    pick_local_seed_set_b_optimistic_gap_estimation: "[true]\\nAfter the harmonization MA checks weather it is\\npossible to compute a positively scored alignment\\nfrom the seed set. Gaps between seeds can be\\nestimated in two ways: Optimistic [true]: Assume\\nthat the gap can be filled using merely matches and\\na single insertion/deletion. Pessimistic [false]:\\nAssume that the gap can be filled using matches and\\nmismatches that add up to a score of 0 and a single\\ninsertion/deletion."
    pick_local_seed_set_c_maximal_gap_penalty: "[100]\\nMaximal Gap cost penalty during local seed set\\ncomputation."
    maximal_gap_size: "[20]                  If the gap between seeds is larger than <val> on\\nquery or reference, the dual extension process is\\nused to fill the gap. Dual extension is more\\nexpensive if the extension does not Z-drop, but\\nmore efficient otherwise."
    minimum_genome_size_for_heuristics: "[10000000]\\nSome heuristics can only be applied on long enough\\ngenomes. Disables: SoC score Drop-off if the genome\\nis shorter than <val>."
    disable_all_heuristics: "[false]        Disables all runtime heuristics. (Intended for\\ndebugging.)"
    match_score: "[2]                        Match score. (Used in the context of Dynamic\\nProgramming and for SoC width computation.)"
    mismatch_penalty: "[4]                   Penalty for mismatch."
    gap_penalty: "[4]                        First penalty for gap opening. (Two piece affine\\ngap costs)"
    extend_penalty: "[2]                     First penalty for gap extension. (Two piece affine\\ngap costs)"
    second_gap_penalty: "[24]                Second penalty for gap opening. (Two piece affine\\ngap costs)"
    second_extend_penalty: "[1]              Second penalty for gap extension. (Two piece affine\\ngap costs)"
    padding: "[1000]                         If an alignment does not reach its read's\\nendpoints, the missing parts can be computed via\\ndynamic programming. If the length of the missing\\nparts is smaller than 'Padding', dynamic\\nprogramming is used to extend the alignment towards\\nthe endpoints of the read. Otherwise, the unaligned\\nparts of the read are ignored and the alignment\\nstays unextended."
    bandwidth_for_extensions: "[512]         Bandwidth used in the context of extending an\\nalignment towards the endpoints of its read. (See\\n'Padding')"
    minimal_bandwidth_in_gaps: "[20]         Gaps between seeds are generally filled using\\ndynamic programming. This option determines the\\nminimal bandwidth used in the context of bridging\\ngaps. More details can be found in the MA-Handbook."
    z_drop: "[200]                           If the running score during dynamic programming\\ndrops faster than <val> stop the extension process."
    detect_small_inversions: "[false]       Use DP to search for small inversions that do not\\ncontain any seeds."
    z_drop_inversions: "[100]                Check for an inversion if the running score during\\ndynamic programming drops faster than <val>."
    limit_dot: "-M, --Minimal_Number_of_SoC's <int> [1]        Always consider the first <val> SoC's no matter the "
  }
  output {
    File out_stdout = stdout()
  }
}