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
    String? score_factor_for_paired_reads
    Boolean? check_for_consistency
    String? seeding_technique
    Int? minimal_seed_length
    Int? minimal_ambiguity
    Int? maximal_ambiguity
    Boolean? skip_ambiguous_seeds
    Int? seeding_drop_off_a_minimal_seed_size
    String? seeding_drop_off_b_factor
    Boolean? maximal_number_of_soc
    Boolean? minimal_number_of_soc
    Int? fixed_soc_width
    Int? minimal_alignment_score
    Boolean? omit_secondary_alignments
    Boolean? omit_supplementary_alignments
    String? maximal_supplementary_overlap
    Int? number_supplementary_alignments
    Boolean? emulate_ng_mlr
    Boolean? output_long_cigars_in_cg_tag
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
  }
  command <<<
    maCMD \
      ~{if defined(presetting) then ("--Presetting " +  '"' + presetting + '"') else ""} \
      ~{if defined(index) then ("--Index " +  '"' + index + '"') else ""} \
      ~{if defined(in) then ("--In " +  '"' + in + '"') else ""} \
      ~{if defined(mate_in) then ("--Mate_In " +  '"' + mate_in + '"') else ""} \
      ~{true="--Create_Index" false="" create_index} \
      ~{if defined(sam_file_name) then ("--SAM_File_name " +  '"' + sam_file_name + '"') else ""} \
      ~{if defined(number_of_threads) then ("--Number_of_Threads " +  '"' + number_of_threads + '"') else ""} \
      ~{if defined(help) then ("--Help " +  '"' + help + '"') else ""} \
      ~{if defined(score_factor_for_paired_reads) then ("--Score_Factor_for_Paired_Reads " +  '"' + score_factor_for_paired_reads + '"') else ""} \
      ~{if defined(check_for_consistency) then ("--Check_for_Consistency " +  '"' + check_for_consistency + '"') else ""} \
      ~{if defined(seeding_technique) then ("--Seeding_Technique " +  '"' + seeding_technique + '"') else ""} \
      ~{if defined(minimal_seed_length) then ("--Minimal_Seed_Length " +  '"' + minimal_seed_length + '"') else ""} \
      ~{if defined(minimal_ambiguity) then ("--Minimal_Ambiguity " +  '"' + minimal_ambiguity + '"') else ""} \
      ~{if defined(maximal_ambiguity) then ("--Maximal_Ambiguity " +  '"' + maximal_ambiguity + '"') else ""} \
      ~{if defined(skip_ambiguous_seeds) then ("--Skip_Ambiguous_Seeds " +  '"' + skip_ambiguous_seeds + '"') else ""} \
      ~{if defined(seeding_drop_off_a_minimal_seed_size) then ("--Seeding_Drop-off_A_-_Minimal_Seed_Size " +  '"' + seeding_drop_off_a_minimal_seed_size + '"') else ""} \
      ~{if defined(seeding_drop_off_b_factor) then ("--Seeding_Drop-off_B_-_Factor " +  '"' + seeding_drop_off_b_factor + '"') else ""} \
      ~{true="--Maximal_Number_of_SoC" false="" maximal_number_of_soc} \
      ~{true="--Minimal_Number_of_SoC" false="" minimal_number_of_soc} \
      ~{if defined(fixed_soc_width) then ("--Fixed_SoC_Width " +  '"' + fixed_soc_width + '"') else ""} \
      ~{if defined(minimal_alignment_score) then ("--Minimal_Alignment_Score " +  '"' + minimal_alignment_score + '"') else ""} \
      ~{if defined(omit_secondary_alignments) then ("--Omit_Secondary_Alignments " +  '"' + omit_secondary_alignments + '"') else ""} \
      ~{if defined(omit_supplementary_alignments) then ("--Omit_Supplementary_Alignments " +  '"' + omit_supplementary_alignments + '"') else ""} \
      ~{if defined(maximal_supplementary_overlap) then ("--Maximal_Supplementary_Overlap " +  '"' + maximal_supplementary_overlap + '"') else ""} \
      ~{if defined(number_supplementary_alignments) then ("--Number_Supplementary_Alignments " +  '"' + number_supplementary_alignments + '"') else ""} \
      ~{true="--Emulate_NGMLR" false="" emulate_ng_mlr} \
      ~{if defined(output_long_cigars_in_cg_tag) then ("--Output_long_cigars_in_CG_tag " +  '"' + output_long_cigars_in_cg_tag + '"') else ""} \
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
  parameter_meta {
    presetting: "[Default]              Optimize aligner parameters for a selected  sequencing technique. Available presettings are:  'Default', 'Illumina', 'Illumina_Paired',  'Nanopore', 'PacBio'. "
    index: "[]                     Filename of FMD-index. (A FMD-index can be  generated via the --Create_Index option.) This  option must be set. "
    in: "[]                        Filenames of Fasta/Fastq files containing reads.  gz-compressed files are automatically decompressed.  Multiple files can be specified by a comma  separated list. At least one file name must be  provided. "
    mate_in: "[]                   Filenames of the mates in the case of paired reads.  If this option is set, the aligner switches to  paired mode automatically. The number of reads  given as mates must match the accumulated number of  reads provided via the 'in'-option. "
    create_index: "<fasta_file_name,output_folder,index_name> [] Generate a FMD-index for a Fasta file.  'fasta_file_name' has to be the file-path of the  Fasta file holding the genome used for index  creation. 'output_folder' is the folder-path of the  location used for index storage. 'index_name' is  the name used for identifying the new FMD-Index. In  the context of alignments, the genome-name is used  for FMD-index selection. "
    sam_file_name: "[ma_out.sam] Name of the SAM file alignments shall be written  to. "
    number_of_threads: "[8]              Number of threads used in the context of  alignments. This options is only available, if 'use  all processor cores' is off. "
    help: "[true]                       Print the complete help text. "
    score_factor_for_paired_reads: "[1.25] This factor is multiplied to the score of  successfully paired reads. Used in the context of  the computation of the mapping quality and for  picking optimal alignment pairs. [val] < 1 results  in penalty; [val] > 1 results in bonus. "
    check_for_consistency: "[false]         Check if both paired read files comprise the same  number of reads. (Intended for debugging.) "
    seeding_technique: "[maxSpan]       Technique used for the initial seeding. Available  techniques are: maxSpan and SMEMs. "
    minimal_seed_length: "[16]           All seeds with size smaller than 'minimal seed  length' are discarded. "
    minimal_ambiguity: "[0]                  During the extension of seeds using the FMD-index:  With increasing extension width, the number of  occurrences of corresponding seeds on the reference  montonically decreases. Keep extending, while the  number of occurrences is higher than 'Minimal  Ambiguity'. (For details see the MA-Handbook.) "
    maximal_ambiguity: "[100]                Discard seeds that occur more than 'Maximal  ambiguity' time on the reference. Set to zero to  disable. "
    skip_ambiguous_seeds: "[false]          Enabled: Discard all seeds that are more ambiguous  than [Maximal Ambiguity]. Disabled: sample [Maximal  Ambiguity] random seeds from too ambiguous seeds. "
    seeding_drop_off_a_minimal_seed_size: "[15] Heuristic runtime optimization: For a given read R,  let N be the number of seeds of size >= [val].  Discard R, if N < [length(R)] * [Seeding drop-off  B]. "
    seeding_drop_off_b_factor: "[0.005] Heuristic runtime optimization: Factor for seed  drop-off calculation. For more information see  parameter [Seeding drop-off A]. "
    maximal_number_of_soc: "'s <int> [30]       Only consider the <val> best scored SoC's. 0 = no  limit. "
    minimal_number_of_soc: "'s <int> [1]        Always consider the first <val> SoC's no matter the  Heuristic optimizations. Upping this parameter  might improve the output of supplementary  alignments and therefore successive SV calling. "
    fixed_soc_width: "[0]                    Set the SoC width to a fixed value. 0 = use the  formula given in the paper. This parameter is  intended for debugging purposes. "
    minimal_alignment_score: "[75]           Suppress the output of alignments with a score  below val. "
    omit_secondary_alignments: "[false]     Suppress the output of secondary alignments. "
    omit_supplementary_alignments: "[false] Suppress the output of supplementary alignments. "
    maximal_supplementary_overlap: "[0.1] An non-primary alignment A is considered  supplementary, if less than val percent of A  overlap with the primary alignment on the query.  Otherwise A is considered secondary. "
    number_supplementary_alignments: "[1] Maximal Number of supplementary alignments per  primary alignment. "
    emulate_ng_mlr: "'s_tag_output <bool> [false] Output SAM tags as NGMLR would. Activate this if  you want to use MA in combination with Sniffles.  Enableing this will drastically increase the size  of the output file. "
    output_long_cigars_in_cg_tag: "[true] Some software crashes if a cigar is too long.  Enabeling this flag makes MA output that the entire  read was soft clipped in the regular cigar field if  the cigar would exceed 65536 operations. The actual  cigar is then given in the CG:B:I tag as a comma  seperated binary list. "
    maximal_gap_size: "[20]                  If the gap between seeds is larger than <val> on  query or reference, the dual extension process is  used to fill the gap. Dual extension is more  expensive if the extension does not Z-drop, but  more efficient otherwise. "
    minimum_genome_size_for_heuristics: "[10000000] Some heuristics can only be applied on long enough  genomes. Disables: SoC score Drop-off if the genome  is shorter than <val>. "
    disable_all_heuristics: "[false]        Disables all runtime heuristics. (Intended for  debugging.) "
    match_score: "[2]                        Match score. (Used in the context of Dynamic  Programming and for SoC width computation.) "
    mismatch_penalty: "[4]                   Penalty for mismatch. "
    gap_penalty: "[4]                        First penalty for gap opening. (Two piece affine  gap costs) "
    extend_penalty: "[2]                     First penalty for gap extension. (Two piece affine  gap costs) "
    second_gap_penalty: "[24]                Second penalty for gap opening. (Two piece affine  gap costs) "
    second_extend_penalty: "[1]              Second penalty for gap extension. (Two piece affine  gap costs) "
    padding: "[1000]                         If an alignment does not reach its read's  endpoints, the missing parts can be computed via  dynamic programming. If the length of the missing  parts is smaller than 'Padding', dynamic  programming is used to extend the alignment towards  the endpoints of the read. Otherwise, the unaligned  parts of the read are ignored and the alignment  stays unextended. "
    bandwidth_for_extensions: "[512]         Bandwidth used in the context of extending an  alignment towards the endpoints of its read. (See  'Padding') "
    minimal_bandwidth_in_gaps: "[20]         Gaps between seeds are generally filled using  dynamic programming. This option determines the  minimal bandwidth used in the context of bridging  gaps. More details can be found in the MA-Handbook. "
    z_drop: "[200]                           If the running score during dynamic programming  drops faster than <val> stop the extension process. "
    detect_small_inversions: "[false]       Use DP to search for small inversions that do not  contain any seeds. "
    z_drop_inversions: "[100]                Check for an inversion if the running score during  dynamic programming drops faster than <val>. "
  }
}