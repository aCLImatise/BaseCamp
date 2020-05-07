class: CommandLineTool
id: maCMD.cwl
inputs:
- id: presetting
  doc: "[Default]              Optimize aligner parameters for a selected  sequencing\
    \ technique. Available presettings are:  'Default', 'Illumina', 'Illumina_Paired',\
    \  'Nanopore', 'PacBio'. "
  type: string
  inputBinding:
    prefix: --Presetting
- id: index
  doc: '[]                     Filename of FMD-index. (A FMD-index can be  generated
    via the --Create_Index option.) This  option must be set. '
  type: File
  inputBinding:
    prefix: --Index
- id: in
  doc: '[]                        Filenames of Fasta/Fastq files containing reads.  gz-compressed
    files are automatically decompressed.  Multiple files can be specified by a comma  separated
    list. At least one file name must be  provided. '
  type: File
  inputBinding:
    prefix: --In
- id: mate_in
  doc: "[]                   Filenames of the mates in the case of paired reads. \
    \ If this option is set, the aligner switches to  paired mode automatically. The\
    \ number of reads  given as mates must match the accumulated number of  reads\
    \ provided via the 'in'-option. "
  type: File
  inputBinding:
    prefix: --Mate_In
- id: create_index
  doc: "<fasta_file_name,output_folder,index_name> [] Generate a FMD-index for a Fasta\
    \ file.  'fasta_file_name' has to be the file-path of the  Fasta file holding\
    \ the genome used for index  creation. 'output_folder' is the folder-path of the\
    \  location used for index storage. 'index_name' is  the name used for identifying\
    \ the new FMD-Index. In  the context of alignments, the genome-name is used  for\
    \ FMD-index selection. "
  type: boolean
  inputBinding:
    prefix: --Create_Index
- id: sam_file_name
  doc: '[ma_out.sam] Name of the SAM file alignments shall be written  to. '
  type: File
  inputBinding:
    prefix: --SAM_File_name
- id: number_of_threads
  doc: "[8]              Number of threads used in the context of  alignments. This\
    \ options is only available, if 'use  all processor cores' is off. "
  type: long
  inputBinding:
    prefix: --Number_of_Threads
- id: help
  doc: '[true]                       Print the complete help text. '
  type: boolean
  inputBinding:
    prefix: --Help
- id: score_factor_for_paired_reads
  doc: '[1.25] This factor is multiplied to the score of  successfully paired reads.
    Used in the context of  the computation of the mapping quality and for  picking
    optimal alignment pairs. [val] < 1 results  in penalty; [val] > 1 results in bonus. '
  type: string
  inputBinding:
    prefix: --Score_Factor_for_Paired_Reads
- id: check_for_consistency
  doc: '[false]         Check if both paired read files comprise the same  number
    of reads. (Intended for debugging.) '
  type: boolean
  inputBinding:
    prefix: --Check_for_Consistency
- id: seeding_technique
  doc: '[maxSpan]       Technique used for the initial seeding. Available  techniques
    are: maxSpan and SMEMs. '
  type: string
  inputBinding:
    prefix: --Seeding_Technique
- id: minimal_seed_length
  doc: "[16]           All seeds with size smaller than 'minimal seed  length' are\
    \ discarded. "
  type: long
  inputBinding:
    prefix: --Minimal_Seed_Length
- id: minimal_ambiguity
  doc: "[0]                  During the extension of seeds using the FMD-index:  With\
    \ increasing extension width, the number of  occurrences of corresponding seeds\
    \ on the reference  montonically decreases. Keep extending, while the  number\
    \ of occurrences is higher than 'Minimal  Ambiguity'. (For details see the MA-Handbook.) "
  type: long
  inputBinding:
    prefix: --Minimal_Ambiguity
- id: maximal_ambiguity
  doc: "[100]                Discard seeds that occur more than 'Maximal  ambiguity'\
    \ time on the reference. Set to zero to  disable. "
  type: long
  inputBinding:
    prefix: --Maximal_Ambiguity
- id: skip_ambiguous_seeds
  doc: '[false]          Enabled: Discard all seeds that are more ambiguous  than
    [Maximal Ambiguity]. Disabled: sample [Maximal  Ambiguity] random seeds from too
    ambiguous seeds. '
  type: boolean
  inputBinding:
    prefix: --Skip_Ambiguous_Seeds
- id: seeding_drop_off_a_minimal_seed_size
  doc: '[15] Heuristic runtime optimization: For a given read R,  let N be the number
    of seeds of size >= [val].  Discard R, if N < [length(R)] * [Seeding drop-off  B]. '
  type: long
  inputBinding:
    prefix: --Seeding_Drop-off_A_-_Minimal_Seed_Size
- id: seeding_drop_off_b_factor
  doc: '[0.005] Heuristic runtime optimization: Factor for seed  drop-off calculation.
    For more information see  parameter [Seeding drop-off A]. '
  type: string
  inputBinding:
    prefix: --Seeding_Drop-off_B_-_Factor
- id: maximal_number_of_soc
  doc: "'s <int> [30]       Only consider the <val> best scored SoC's. 0 = no  limit. "
  type: boolean
  inputBinding:
    prefix: --Maximal_Number_of_SoC
- id: minimal_number_of_soc
  doc: "'s <int> [1]        Always consider the first <val> SoC's no matter the  Heuristic\
    \ optimizations. Upping this parameter  might improve the output of supplementary\
    \  alignments and therefore successive SV calling. "
  type: boolean
  inputBinding:
    prefix: --Minimal_Number_of_SoC
- id: fixed_soc_width
  doc: '[0]                    Set the SoC width to a fixed value. 0 = use the  formula
    given in the paper. This parameter is  intended for debugging purposes. '
  type: long
  inputBinding:
    prefix: --Fixed_SoC_Width
- id: minimal_alignment_score
  doc: '[75]           Suppress the output of alignments with a score  below val. '
  type: long
  inputBinding:
    prefix: --Minimal_Alignment_Score
- id: omit_secondary_alignments
  doc: '[false]     Suppress the output of secondary alignments. '
  type: boolean
  inputBinding:
    prefix: --Omit_Secondary_Alignments
- id: omit_supplementary_alignments
  doc: '[false] Suppress the output of supplementary alignments. '
  type: boolean
  inputBinding:
    prefix: --Omit_Supplementary_Alignments
- id: maximal_supplementary_overlap
  doc: '[0.1] An non-primary alignment A is considered  supplementary, if less than
    val percent of A  overlap with the primary alignment on the query.  Otherwise
    A is considered secondary. '
  type: string
  inputBinding:
    prefix: --Maximal_Supplementary_Overlap
- id: number_supplementary_alignments
  doc: '[1] Maximal Number of supplementary alignments per  primary alignment. '
  type: long
  inputBinding:
    prefix: --Number_Supplementary_Alignments
- id: emulate_ng_mlr
  doc: "'s_tag_output <bool> [false] Output SAM tags as NGMLR would. Activate this\
    \ if  you want to use MA in combination with Sniffles.  Enableing this will drastically\
    \ increase the size  of the output file. "
  type: boolean
  inputBinding:
    prefix: --Emulate_NGMLR
- id: output_long_cigars_in_cg_tag
  doc: '[true] Some software crashes if a cigar is too long.  Enabeling this flag
    makes MA output that the entire  read was soft clipped in the regular cigar field
    if  the cigar would exceed 65536 operations. The actual  cigar is then given in
    the CG:B:I tag as a comma  seperated binary list. '
  type: boolean
  inputBinding:
    prefix: --Output_long_cigars_in_CG_tag
- id: maximal_gap_size
  doc: '[20]                  If the gap between seeds is larger than <val> on  query
    or reference, the dual extension process is  used to fill the gap. Dual extension
    is more  expensive if the extension does not Z-drop, but  more efficient otherwise. '
  type: long
  inputBinding:
    prefix: --Maximal_Gap_Size
- id: minimum_genome_size_for_heuristics
  doc: '[10000000] Some heuristics can only be applied on long enough  genomes. Disables:
    SoC score Drop-off if the genome  is shorter than <val>. '
  type: long
  inputBinding:
    prefix: --Minimum_Genome_Size_for_Heuristics
- id: disable_all_heuristics
  doc: '[false]        Disables all runtime heuristics. (Intended for  debugging.) '
  type: boolean
  inputBinding:
    prefix: --Disable_All_Heuristics
- id: match_score
  doc: '[2]                        Match score. (Used in the context of Dynamic  Programming
    and for SoC width computation.) '
  type: long
  inputBinding:
    prefix: --Match_Score
- id: mismatch_penalty
  doc: '[4]                   Penalty for mismatch. '
  type: long
  inputBinding:
    prefix: --Mismatch_Penalty
- id: gap_penalty
  doc: '[4]                        First penalty for gap opening. (Two piece affine  gap
    costs) '
  type: long
  inputBinding:
    prefix: --Gap_penalty
- id: extend_penalty
  doc: '[2]                     First penalty for gap extension. (Two piece affine  gap
    costs) '
  type: long
  inputBinding:
    prefix: --Extend_Penalty
- id: second_gap_penalty
  doc: '[24]                Second penalty for gap opening. (Two piece affine  gap
    costs) '
  type: long
  inputBinding:
    prefix: --Second_Gap_Penalty
- id: second_extend_penalty
  doc: '[1]              Second penalty for gap extension. (Two piece affine  gap
    costs) '
  type: long
  inputBinding:
    prefix: --Second_Extend_Penalty
- id: padding
  doc: "[1000]                         If an alignment does not reach its read's \
    \ endpoints, the missing parts can be computed via  dynamic programming. If the\
    \ length of the missing  parts is smaller than 'Padding', dynamic  programming\
    \ is used to extend the alignment towards  the endpoints of the read. Otherwise,\
    \ the unaligned  parts of the read are ignored and the alignment  stays unextended. "
  type: long
  inputBinding:
    prefix: --Padding
- id: bandwidth_for_extensions
  doc: "[512]         Bandwidth used in the context of extending an  alignment towards\
    \ the endpoints of its read. (See  'Padding') "
  type: long
  inputBinding:
    prefix: --Bandwidth_for_Extensions
- id: minimal_bandwidth_in_gaps
  doc: '[20]         Gaps between seeds are generally filled using  dynamic programming.
    This option determines the  minimal bandwidth used in the context of bridging  gaps.
    More details can be found in the MA-Handbook. '
  type: long
  inputBinding:
    prefix: --Minimal_Bandwidth_in_Gaps
- id: z_drop
  doc: '[200]                           If the running score during dynamic programming  drops
    faster than <val> stop the extension process. '
  type: long
  inputBinding:
    prefix: --Z_Drop
- id: detect_small_inversions
  doc: '[false]       Use DP to search for small inversions that do not  contain any
    seeds. '
  type: boolean
  inputBinding:
    prefix: --Detect_Small_Inversions
- id: z_drop_inversions
  doc: '[100]                Check for an inversion if the running score during  dynamic
    programming drops faster than <val>. '
  type: long
  inputBinding:
    prefix: --Z_Drop_Inversions
outputs: []
cwlVersion: v1.1
baseCommand:
- maCMD
