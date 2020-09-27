class: CommandLineTool
id: maCMD.cwl
inputs:
- id: in_presetting
  doc: "[Default]              Optimize aligner parameters for a selected\nsequencing\
    \ technique. Available presettings are:\n'Default', 'Illumina', 'Illumina_Paired',\n\
    'Nanopore', 'PacBio'."
  type: string
  inputBinding:
    prefix: --Presetting
- id: in_index
  doc: "[]                     Filename of FMD-index. (A FMD-index can be\ngenerated\
    \ via the --Create_Index option.) This\noption must be set."
  type: File
  inputBinding:
    prefix: --Index
- id: in_in
  doc: "[]                        Filenames of Fasta/Fastq files containing reads.\n\
    gz-compressed files are automatically decompressed.\nMultiple files can be specified\
    \ by a comma\nseparated list. At least one file name must be\nprovided."
  type: File
  inputBinding:
    prefix: --In
- id: in_mate_in
  doc: "[]                   Filenames of the mates in the case of paired reads.\n\
    If this option is set, the aligner switches to\npaired mode automatically. The\
    \ number of reads\ngiven as mates must match the accumulated number of\nreads\
    \ provided via the 'in'-option."
  type: File
  inputBinding:
    prefix: --Mate_In
- id: in_create_index
  doc: "<fasta_file_name,output_folder,index_name> []\nGenerate a FMD-index for a\
    \ Fasta file.\n'fasta_file_name' has to be the file-path of the\nFasta file holding\
    \ the genome used for index\ncreation. 'output_folder' is the folder-path of the\n\
    location used for index storage. 'index_name' is\nthe name used for identifying\
    \ the new FMD-Index. In\nthe context of alignments, the genome-name is used\n\
    for FMD-index selection."
  type: boolean
  inputBinding:
    prefix: --Create_Index
- id: in_sam_file_name
  doc: "[ma_out.sam]\nName of the SAM file alignments shall be written\nto."
  type: File
  inputBinding:
    prefix: --SAM_File_name
- id: in_number_of_threads
  doc: "[8]              Number of threads used in the context of\nalignments. This\
    \ options is only available, if 'use\nall processor cores' is off."
  type: long
  inputBinding:
    prefix: --Number_of_Threads
- id: in_help
  doc: '[true]                       Print the complete help text.'
  type: boolean
  inputBinding:
    prefix: --Help
- id: in_use_paired_reads
  doc: '[false]              If your reads occur as paired reads, activate this'
  type: boolean
  inputBinding:
    prefix: --Use_Paired_Reads
- id: in_standard_deviation_of_paired_reads
  doc: "[150]\n<val> represents the standard deviation for the\ndistance between paired\
    \ reads. Used in the context\nof the computation of the mapping quality and for\n\
    picking optimal alignment pairs."
  type: long
  inputBinding:
    prefix: --Standard_Deviation_of_Paired_Reads
- id: in_score_factor_for_paired_reads
  doc: "[1.25]\nThis factor is multiplied to the score of\nsuccessfully paired reads.\
    \ Used in the context of\nthe computation of the mapping quality and for\npicking\
    \ optimal alignment pairs. [val] < 1 results\nin penalty; [val] > 1 results in\
    \ bonus."
  type: double
  inputBinding:
    prefix: --Score_Factor_for_Paired_Reads
- id: in_check_for_consistency
  doc: "[false]         Check if both paired read files comprise the same\nnumber\
    \ of reads. (Intended for debugging.)"
  type: boolean
  inputBinding:
    prefix: --Check_for_Consistency
- id: in_seeding_technique
  doc: "[maxSpan]       Technique used for the initial seeding. Available\ntechniques\
    \ are: maxSpan and SMEMs."
  type: string
  inputBinding:
    prefix: --Seeding_Technique
- id: in_minimal_seed_length
  doc: "[16]           All seeds with size smaller than 'minimal seed\nlength' are\
    \ discarded."
  type: long
  inputBinding:
    prefix: --Minimal_Seed_Length
- id: in_minimal_ambiguity
  doc: "[0]                  During the extension of seeds using the FMD-index:\n\
    With increasing extension width, the number of\noccurrences of corresponding seeds\
    \ on the reference\nmontonically decreases. Keep extending, while the\nnumber\
    \ of occurrences is higher than 'Minimal\nAmbiguity'. (For details see the MA-Handbook.)"
  type: long
  inputBinding:
    prefix: --Minimal_Ambiguity
- id: in_maximal_ambiguity
  doc: "[100]                Discard seeds that occur more than 'Maximal\nambiguity'\
    \ time on the reference. Set to zero to\ndisable."
  type: long
  inputBinding:
    prefix: --Maximal_Ambiguity
- id: in_skip_ambiguous_seeds
  doc: "[false]          Enabled: Discard all seeds that are more ambiguous\nthan\
    \ [Maximal Ambiguity]. Disabled: sample [Maximal\nAmbiguity] random seeds from\
    \ too ambiguous seeds."
  type: boolean
  inputBinding:
    prefix: --Skip_Ambiguous_Seeds
- id: in_seeding_drop_off_a_minimal_seed_size
  doc: "[15]\nHeuristic runtime optimization: For a given read R,\nlet N be the number\
    \ of seeds of size >= [val].\nDiscard R, if N < [length(R)] * [Seeding drop-off\n\
    B]."
  type: long
  inputBinding:
    prefix: --Seeding_Drop-off_A_-_Minimal_Seed_Size
- id: in_seeding_drop_off_b_factor
  doc: "[0.005]\nHeuristic runtime optimization: Factor for seed\ndrop-off calculation.\
    \ For more information see\nparameter [Seeding drop-off A]."
  type: double
  inputBinding:
    prefix: --Seeding_Drop-off_B_-_Factor
- id: in_maximal_number_of_soc
  doc: "'s <int> [30]       Only consider the <val> best scored SoC's. 0 = no"
  type: boolean
  inputBinding:
    prefix: --Maximal_Number_of_SoC
- id: in_fixed_soc_width
  doc: "[0]                    Set the SoC width to a fixed value. 0 = use the\nformula\
    \ given in the paper. This parameter is\nintended for debugging purposes."
  type: long
  inputBinding:
    prefix: --Fixed_SoC_Width
- id: in_maximal_number_of_reported_alignments
  doc: "[0]\nDo not output more than <val> alignments. Set to\nzero for unlimited\
    \ output."
  type: long
  inputBinding:
    prefix: --Maximal_Number_of_Reported_Alignments
- id: in_minimal_alignment_score
  doc: "[75]           Suppress the output of alignments with a score\nbelow val."
  type: long
  inputBinding:
    prefix: --Minimal_Alignment_Score
- id: in_omit_secondary_alignments
  doc: '[false]     Suppress the output of secondary alignments.'
  type: boolean
  inputBinding:
    prefix: --Omit_Secondary_Alignments
- id: in_omit_supplementary_alignments
  doc: "[false]\nSuppress the output of supplementary alignments."
  type: boolean
  inputBinding:
    prefix: --Omit_Supplementary_Alignments
- id: in_maximal_supplementary_overlap
  doc: "[0.1]\nAn non-primary alignment A is considered\nsupplementary, if less than\
    \ val percent of A\noverlap with the primary alignment on the query.\nOtherwise\
    \ A is considered secondary."
  type: double
  inputBinding:
    prefix: --Maximal_Supplementary_Overlap
- id: in_number_supplementary_alignments
  doc: "[1]\nMaximal Number of supplementary alignments per\nprimary alignment."
  type: long
  inputBinding:
    prefix: --Number_Supplementary_Alignments
- id: in_emulate_ng_mlr
  doc: "'s_tag_output <bool> [false]\nOutput SAM tags as NGMLR would. Activate this\
    \ if\nyou want to use MA in combination with Sniffles.\nEnableing this will drastically\
    \ increase the size\nof the output file."
  type: boolean
  inputBinding:
    prefix: --Emulate_NGMLR
- id: in_output_long_cigars_in_cg_tag
  doc: "[true]\nSome software crashes if a cigar is too long.\nEnabeling this flag\
    \ makes MA output that the entire\nread was soft clipped in the regular cigar\
    \ field if\nthe cigar would exceed 65536 operations. The actual\ncigar is then\
    \ given in the CG:B:I tag as a comma\nseperated binary list."
  type: boolean
  inputBinding:
    prefix: --Output_long_cigars_in_CG_tag
- id: in_soc_score_drop_off
  doc: "[0.1]            Let x be the maximal encountered SoC score. Stop\nharmonizing\
    \ SoC's if there is a SoC with a score\nlower than <val>*x."
  type: double
  inputBinding:
    prefix: --SoC_Score_Drop-off
- id: in_minimal_harmonization_score
  doc: "[18]       Discard all harmonized SoC's with scores lower than\n<val>. Only\
    \ keep detected inversions with a score\n>= <val> * [Match Score]."
  type: long
  inputBinding:
    prefix: --Minimal_Harmonization_Score
- id: in_relative_minimal_harmonization_score
  doc: "[0.002]\nDiscard all harmonized SoC's with scores lower than\nlength(read)*<val>."
  type: long
  inputBinding:
    prefix: --Relative_Minimal_Harmonization_Score
- id: in_harmonization_drop_off_a_score_difference
  doc: "[0.0001]\nLet x be the maximal encountered harmonization\nscore. Stop harmonizing\
    \ further SoC's if there are\n<Harmonization Drop-off B> SoC's with lower scores\n\
    than x-<readlength>*<val> in a row."
  type: double
  inputBinding:
    prefix: --Harmonization_Drop-off_A_-_Score_Difference
- id: in_harmonization_drop_off_b_look_ahead
  doc: "[3]\nSee Harmonization Drop-off A."
  type: long
  inputBinding:
    prefix: --Harmonization_Drop-off_B_-_Lookahead
- id: in_harmonization_score_drop_off_minimal_query_length
  doc: "[800]\nFor reads of length >= [val]: Ignore all SoC's with\nharmonization\
    \ scores lower than the current maximal\nscore. 0 = disabled."
  type: long
  inputBinding:
    prefix: --Harmonization_Score_Drop-off_-_Minimal_Query_Length
- id: in_artifact_filter_a_maximal_delta_distance
  doc: "[0.1]\nFilter seeds if the difference between the delta\ndistance to it's\
    \ predecessor and successor is less\nthen [val] percent (set to 1 to disable filter)\
    \ and\nthe delta distance to it's pre- and successor is\nmore than [Artifact Filter\
    \ B] nt."
  type: double
  inputBinding:
    prefix: --Artifact_Filter_A_-_Maximal_Delta_Distance
- id: in_artifact_filter_b_minimal_delta_distance
  doc: "[16]\nSee Artifact Filter A"
  type: long
  inputBinding:
    prefix: --Artifact_Filter_B_-_Minimal_Delta_Distance
- id: in_pick_local_seed_set_a_enabled
  doc: "[false]\n<val> = true enables local seed set computation."
  type: boolean
  inputBinding:
    prefix: --Pick_Local_Seed_Set_A_-_Enabled
- id: in_pick_local_seed_set_b_optimistic_gap_estimation
  doc: "[true]\nAfter the harmonization MA checks weather it is\npossible to compute\
    \ a positively scored alignment\nfrom the seed set. Gaps between seeds can be\n\
    estimated in two ways: Optimistic [true]: Assume\nthat the gap can be filled using\
    \ merely matches and\na single insertion/deletion. Pessimistic [false]:\nAssume\
    \ that the gap can be filled using matches and\nmismatches that add up to a score\
    \ of 0 and a single\ninsertion/deletion."
  type: boolean
  inputBinding:
    prefix: --Pick_Local_Seed_Set_B_-_Optimistic_Gap_Estimation
- id: in_pick_local_seed_set_c_maximal_gap_penalty
  doc: "[100]\nMaximal Gap cost penalty during local seed set\ncomputation."
  type: long
  inputBinding:
    prefix: --Pick_Local_Seed_Set_C_-_Maximal_Gap_Penalty
- id: in_maximal_gap_size
  doc: "[20]                  If the gap between seeds is larger than <val> on\nquery\
    \ or reference, the dual extension process is\nused to fill the gap. Dual extension\
    \ is more\nexpensive if the extension does not Z-drop, but\nmore efficient otherwise."
  type: long
  inputBinding:
    prefix: --Maximal_Gap_Size
- id: in_minimum_genome_size_for_heuristics
  doc: "[10000000]\nSome heuristics can only be applied on long enough\ngenomes. Disables:\
    \ SoC score Drop-off if the genome\nis shorter than <val>."
  type: long
  inputBinding:
    prefix: --Minimum_Genome_Size_for_Heuristics
- id: in_disable_all_heuristics
  doc: "[false]        Disables all runtime heuristics. (Intended for\ndebugging.)"
  type: boolean
  inputBinding:
    prefix: --Disable_All_Heuristics
- id: in_match_score
  doc: "[2]                        Match score. (Used in the context of Dynamic\n\
    Programming and for SoC width computation.)"
  type: long
  inputBinding:
    prefix: --Match_Score
- id: in_mismatch_penalty
  doc: '[4]                   Penalty for mismatch.'
  type: long
  inputBinding:
    prefix: --Mismatch_Penalty
- id: in_gap_penalty
  doc: "[4]                        First penalty for gap opening. (Two piece affine\n\
    gap costs)"
  type: long
  inputBinding:
    prefix: --Gap_penalty
- id: in_extend_penalty
  doc: "[2]                     First penalty for gap extension. (Two piece affine\n\
    gap costs)"
  type: long
  inputBinding:
    prefix: --Extend_Penalty
- id: in_second_gap_penalty
  doc: "[24]                Second penalty for gap opening. (Two piece affine\ngap\
    \ costs)"
  type: long
  inputBinding:
    prefix: --Second_Gap_Penalty
- id: in_second_extend_penalty
  doc: "[1]              Second penalty for gap extension. (Two piece affine\ngap\
    \ costs)"
  type: long
  inputBinding:
    prefix: --Second_Extend_Penalty
- id: in_padding
  doc: "[1000]                         If an alignment does not reach its read's\n\
    endpoints, the missing parts can be computed via\ndynamic programming. If the\
    \ length of the missing\nparts is smaller than 'Padding', dynamic\nprogramming\
    \ is used to extend the alignment towards\nthe endpoints of the read. Otherwise,\
    \ the unaligned\nparts of the read are ignored and the alignment\nstays unextended."
  type: long
  inputBinding:
    prefix: --Padding
- id: in_bandwidth_for_extensions
  doc: "[512]         Bandwidth used in the context of extending an\nalignment towards\
    \ the endpoints of its read. (See\n'Padding')"
  type: long
  inputBinding:
    prefix: --Bandwidth_for_Extensions
- id: in_minimal_bandwidth_in_gaps
  doc: "[20]         Gaps between seeds are generally filled using\ndynamic programming.\
    \ This option determines the\nminimal bandwidth used in the context of bridging\n\
    gaps. More details can be found in the MA-Handbook."
  type: long
  inputBinding:
    prefix: --Minimal_Bandwidth_in_Gaps
- id: in_z_drop
  doc: "[200]                           If the running score during dynamic programming\n\
    drops faster than <val> stop the extension process."
  type: long
  inputBinding:
    prefix: --Z_Drop
- id: in_detect_small_inversions
  doc: "[false]       Use DP to search for small inversions that do not\ncontain any\
    \ seeds."
  type: boolean
  inputBinding:
    prefix: --Detect_Small_Inversions
- id: in_z_drop_inversions
  doc: "[100]                Check for an inversion if the running score during\n\
    dynamic programming drops faster than <val>."
  type: long
  inputBinding:
    prefix: --Z_Drop_Inversions
- id: in_limit_dot
  doc: "-M, --Minimal_Number_of_SoC's <int> [1]        Always consider the first <val>\
    \ SoC's no matter the "
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- maCMD
