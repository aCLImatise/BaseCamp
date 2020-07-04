version 1.0

task RsemEvalCalculateScore {
  input {
    Int? overlap_size
    File? transcript_length_parameters
    String? transcript_length_mean
    String? transcript_length_sd
    Boolean? paired_end
    Boolean? no_qualities
    Boolean? strand_specific
    Boolean? bowtie_two
    Boolean? sam
    Boolean? bam
    Int? p_slash_num_threads
    Boolean? output_bam
    Boolean? sampling_for_bam
    String? seed
    Boolean? q_slash_quiet
    Boolean? h_slash_help
    File? sam_header_info
    Int? seed_length
    String? tag
    File? bowtie_path
    Int? bowtie_n
    Int? bowtie_e
    Int? bowtie_m
    Int? bowtie_chunk_mbs
    Boolean? phred_three_three_quals
    Boolean? phred_six_four_quals
    Boolean? solexa_quals
    File? bowtie_two_path
    String? bowtie_two_mismatch_rate
    Int? bowtie_two_k
    String? bowtie_two_sensitivity_level
    String? forward_prob
    Int? fragment_length_min
    Int? fragment_length_max
    Boolean? estimate_r_spd
    Int? num_r_spd_bins
    String? sam_tools_sort_mem
    Boolean? keep_intermediate_files
    String? temporary_folder
    Boolean? time
    String sambam_formatted_input
    String assembly_fast_a_file
    String sample_name
    String singleend_data_l
    String sample_name_dot_transcript_dot_sorted_do_tba_mdot_bai
    String sample_name_dot_time
    String sample_name_dot_stat
  }
  command <<<
    rsem-eval-calculate-score \
      ~{sambam_formatted_input} \
      ~{assembly_fast_a_file} \
      ~{sample_name} \
      ~{singleend_data_l} \
      ~{sample_name_dot_transcript_dot_sorted_do_tba_mdot_bai} \
      ~{sample_name_dot_time} \
      ~{sample_name_dot_stat} \
      ~{if defined(overlap_size) then ("--overlap-size " +  '"' + overlap_size + '"') else ""} \
      ~{if defined(transcript_length_parameters) then ("--transcript-length-parameters " +  '"' + transcript_length_parameters + '"') else ""} \
      ~{if defined(transcript_length_mean) then ("--transcript-length-mean " +  '"' + transcript_length_mean + '"') else ""} \
      ~{if defined(transcript_length_sd) then ("--transcript-length-sd " +  '"' + transcript_length_sd + '"') else ""} \
      ~{true="--paired-end" false="" paired_end} \
      ~{true="--no-qualities" false="" no_qualities} \
      ~{true="--strand-specific" false="" strand_specific} \
      ~{true="--bowtie2" false="" bowtie_two} \
      ~{true="--sam" false="" sam} \
      ~{true="--bam" false="" bam} \
      ~{if defined(p_slash_num_threads) then ("-p/--num-threads " +  '"' + p_slash_num_threads + '"') else ""} \
      ~{true="--output-bam" false="" output_bam} \
      ~{true="--sampling-for-bam" false="" sampling_for_bam} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{true="-q/--quiet" false="" q_slash_quiet} \
      ~{true="-h/--help" false="" h_slash_help} \
      ~{if defined(sam_header_info) then ("--sam-header-info " +  '"' + sam_header_info + '"') else ""} \
      ~{if defined(seed_length) then ("--seed-length " +  '"' + seed_length + '"') else ""} \
      ~{if defined(tag) then ("--tag " +  '"' + tag + '"') else ""} \
      ~{if defined(bowtie_path) then ("--bowtie-path " +  '"' + bowtie_path + '"') else ""} \
      ~{if defined(bowtie_n) then ("--bowtie-n " +  '"' + bowtie_n + '"') else ""} \
      ~{if defined(bowtie_e) then ("--bowtie-e " +  '"' + bowtie_e + '"') else ""} \
      ~{if defined(bowtie_m) then ("--bowtie-m " +  '"' + bowtie_m + '"') else ""} \
      ~{if defined(bowtie_chunk_mbs) then ("--bowtie-chunkmbs " +  '"' + bowtie_chunk_mbs + '"') else ""} \
      ~{true="--phred33-quals" false="" phred_three_three_quals} \
      ~{true="--phred64-quals" false="" phred_six_four_quals} \
      ~{true="--solexa-quals" false="" solexa_quals} \
      ~{if defined(bowtie_two_path) then ("--bowtie2-path " +  '"' + bowtie_two_path + '"') else ""} \
      ~{if defined(bowtie_two_mismatch_rate) then ("--bowtie2-mismatch-rate " +  '"' + bowtie_two_mismatch_rate + '"') else ""} \
      ~{if defined(bowtie_two_k) then ("--bowtie2-k " +  '"' + bowtie_two_k + '"') else ""} \
      ~{if defined(bowtie_two_sensitivity_level) then ("--bowtie2-sensitivity-level " +  '"' + bowtie_two_sensitivity_level + '"') else ""} \
      ~{if defined(forward_prob) then ("--forward-prob " +  '"' + forward_prob + '"') else ""} \
      ~{if defined(fragment_length_min) then ("--fragment-length-min " +  '"' + fragment_length_min + '"') else ""} \
      ~{if defined(fragment_length_max) then ("--fragment-length-max " +  '"' + fragment_length_max + '"') else ""} \
      ~{true="--estimate-rspd" false="" estimate_r_spd} \
      ~{if defined(num_r_spd_bins) then ("--num-rspd-bins " +  '"' + num_r_spd_bins + '"') else ""} \
      ~{if defined(sam_tools_sort_mem) then ("--samtools-sort-mem " +  '"' + sam_tools_sort_mem + '"') else ""} \
      ~{true="--keep-intermediate-files" false="" keep_intermediate_files} \
      ~{if defined(temporary_folder) then ("--temporary-folder " +  '"' + temporary_folder + '"') else ""} \
      ~{true="--time" false="" time}
  >>>
  parameter_meta {
    overlap_size: "The minimum overlap size required to join two reads together. (Default: 0)"
    transcript_length_parameters: "Read the true transcript length distribution's mean and standard deviation from <file>. This option is mutually exclusive with '--transcript-length-mean' and '--transcript-length-sd'. (Default: off)"
    transcript_length_mean: "The mean of true transcript length distribution. This option is used together with '--transcript-length-sd' and mutually exclusive with '--estimate-transcript-length-distribution'. (Default: learned from human Ensembl annotation and hg20 genome)"
    transcript_length_sd: "The standard deviation of true transcript length distribution. This option is used together with '--transcript-length-mean' and mutually exclusive with '--estimate-transcript-length-distribution'. (Default: learned from human Ensembl annotation and hg20 genome)"
    paired_end: "Input reads are paired-end reads. (Default: off)"
    no_qualities: "Input reads do not contain quality scores. (Default: off)"
    strand_specific: "The RNA-Seq protocol used to generate the reads is strand specific, i.e., all (upstream) reads are derived from the forward strand. This option is equivalent to --forward-prob=1.0. With this option set, if RSEM-EVAL runs the Bowtie/Bowtie 2 aligner, the '--norc' Bowtie/Bowtie 2 option will be used, which disables alignment to the reverse strand of transcripts. (Default: off)"
    bowtie_two: "Use Bowtie 2 instead of Bowtie to align reads. Since currently RSEM-EVAL does not handle indel, local and discordant alignments, the Bowtie2 parameters are set in a way to avoid those alignments. In particular, we use options '--sensitive --dpad 0 --gbar 99999999 --mp 1,1 --np 1 --score-min L,0,-0.1' by default. \"-0.1\", the last parameter of '--score-min' is the negative value of the maximum mismatch rate allowed. This rate can be set by option '--bowtie2-mismatch-rate'. If reads are paired-end, we additionally use options '--no-mixed' and '--no-discordant'. (Default: off)"
    sam: "Input file is in SAM format. (Default: off)"
    bam: "Input file is in BAM format. (Default: off)"
    p_slash_num_threads: "Number of threads to use. Both Bowtie/Bowtie2, expression estimation and 'samtools sort' will use this many threads. (Default: 1)"
    output_bam: "Generate BAM outputs. (Default: off)"
    sampling_for_bam: "When RSEM-EVAL generates a BAM file, instead of outputing all alignments a read has with their posterior probabilities, one alignment is sampled according to the posterior probabilities. The sampling procedure includes the alignment to the \"noise\" transcript, which does not appear in the BAM file. Only the sampled alignment has a weight of 1. All other alignments have weight 0. If the \"noise\" transcript is sampled, all alignments appeared in the BAM file should have weight 0. (Default: off)"
    seed: "Set the seed for the random number generators used in calculating posterior mean estimates and credibility intervals. The seed must be a non-negative 32 bit interger. (Default: off)"
    q_slash_quiet: "Suppress the output of logging information. (Default: off)"
    h_slash_help: "Show help information."
    sam_header_info: "RSEM-EVAL reads header information from input by default. If this option is on, header information is read from the specified file. For the format of the file, please see SAM official website. (Default: \"\")"
    seed_length: "Seed length used by the read aligner. Providing the correct value is important for RSEM-EVAL. If RSEM-EVAL runs Bowtie, it uses this value for Bowtie's seed length parameter. Any read with its or at least one of its mates' (for paired-end reads) length less than this value will be ignored. If the references are not added poly(A) tails, the minimum allowed value is 5, otherwise, the minimum allowed value is 25. Note that this script will only check if the value >= 5 and give a warning message if the value < 25 but >= 5. (Default: 25)"
    tag: "The name of the optional field used in the SAM input for identifying a read with too many valid alignments. The field should have the format <tagName>:i:<value>, where a <value> bigger than 0 indicates a read with too many alignments. (Default: \"\")"
    bowtie_path: "The path to the Bowtie executables. (Default: the path to the Bowtie executables is assumed to be in the user's PATH environment variable)"
    bowtie_n: "(Bowtie parameter) max # of mismatches in the seed. (Range: 0-3, Default: 2)"
    bowtie_e: "(Bowtie parameter) max sum of mismatch quality scores across the alignment. (Default: 99999999)"
    bowtie_m: "(Bowtie parameter) suppress all alignments for a read if > <int> valid alignments exist. (Default: 200)"
    bowtie_chunk_mbs: "(Bowtie parameter) memory allocated for best first alignment calculation (Default: 0 - use Bowtie's default)"
    phred_three_three_quals: "Input quality scores are encoded as Phred+33. (Default: on)"
    phred_six_four_quals: "Input quality scores are encoded as Phred+64 (default for GA Pipeline ver. >= 1.3). (Default: off)"
    solexa_quals: "Input quality scores are solexa encoded (from GA Pipeline ver. < 1.3). (Default: off)"
    bowtie_two_path: "(Bowtie 2 parameter) The path to the Bowtie 2 executables. (Default: the path to the Bowtie 2 executables is assumed to be in the user's PATH environment variable)"
    bowtie_two_mismatch_rate: "(Bowtie 2 parameter) The maximum mismatch rate allowed. (Default: 0.1)"
    bowtie_two_k: "(Bowtie 2 parameter) Find up to <int> alignments per read. (Default: 200)"
    bowtie_two_sensitivity_level: "(Bowtie 2 parameter) Set Bowtie 2's preset options in --end-to-end mode. This option controls how hard Bowtie 2 tries to find alignments. <string> must be one of \"very_fast\", \"fast\", \"sensitive\" and \"very_sensitive\". The four candidates correspond to Bowtie 2's \"--very-fast\", \"--fast\", \"--sensitive\" and \"--very-sensitive\" options. (Default: \"sensitive\" - use Bowtie 2's default)"
    forward_prob: "Probability of generating a read from the forward strand of a transcript. Set to 1 for a strand-specific protocol where all (upstream) reads are derived from the forward strand, 0 for a strand-specific protocol where all (upstream) read are derived from the reverse strand, or 0.5 for a non-strand-specific protocol. (Default: 0.5)"
    fragment_length_min: "Minimum read(SE)/fragment(PE) length allowed. This is also the value for the Bowtie/Bowtie2 -I option. (Default: 1)"
    fragment_length_max: "Maximum read(SE)/fragment(PE) length allowed. This is also the value for the Bowtie/Bowtie 2 -X option. (Default: 1000)"
    estimate_r_spd: "Set this option if you want to estimate the read start position distribution (RSPD) from data. Otherwise, RSEM-EVAL will use a uniform RSPD. (Default: off)"
    num_r_spd_bins: "Number of bins in the RSPD. Only relevant when '--estimate-rspd' is specified. Use of the default setting is recommended. (Default: 20)"
    sam_tools_sort_mem: "Set the maximum memory per thread that can be used by 'samtools sort'. <string> represents the memory and accepts suffices 'K/M/G'. RSEM-EVAL will pass <string> to the '-m' option of 'samtools sort'. Please note that the default used here is different from the default used by samtools. (Default: 1G)"
    keep_intermediate_files: "Keep temporary files generated by RSEM-EVAL. RSEM-EVAL creates a temporary directory, 'sample_name.temp', into which it puts all intermediate output files. If this directory already exists, RSEM-EVAL overwrites all files generated by previous RSEM-EVAL runs inside of it. By default, after RSEM-EVAL finishes, the temporary directory is deleted. Set this option to prevent the deletion of this directory and the intermediate files inside of it. (Default: off)"
    temporary_folder: "Set where to put the temporary files generated by RSEM-EVAL. If the folder specified does not exist, RSEM-EVAL will try to create it. (Default: sample_name.temp)"
    time: "Output time consumed by each step of RSEM-EVAL to 'sample_name.time'. (Default: off)"
    sambam_formatted_input: "SAM/BAM formatted input file. If \"-\" is specified for the filename, SAM/BAM input is instead assumed to come from standard input. RSEM-EVAL requires all alignments of the same read group together. For paired-end reads, RSEM-EVAL also requires the two mates of any alignment be adjacent. See Description section for how to make input file obey RSEM-EVAL's requirements."
    assembly_fast_a_file: "A multi-FASTA file contains the assembly used for calculating RSEM-EVAL score."
    sample_name: "The name of the sample analyzed. All output files are prefixed by this name (e.g., sample_name.isoforms.results)."
    singleend_data_l: "For single-end data, L represents the average read length. For paired-end data, L represents the average fragment length. It should be a positive integer (real value will be rounded to the nearest integer)."
    sample_name_dot_transcript_dot_sorted_do_tba_mdot_bai: "Only generated when --output-bam is specified. 'sample_name.transcript.bam' is a BAM-formatted file of read alignments in transcript coordinates. The MAPQ field of each alignment is set to min(100, floor(-10 * log10(1.0 - w) + 0.5)), where w is the posterior probability of that alignment being the true mapping of a read. In addition, RSEM-EVAL pads a new tag ZW:f:value, where value is a single precision floating number representing the posterior probability. Because this file contains all alignment lines produced by bowtie or user-specified aligners, it can also be used as a replacement of the aligner generated BAM/SAM file. For paired-end reads, if one mate has alignments but the other does not, this file marks the alignable mate as \"unmappable\" (flag bit 0x4) and appends an optional field \"Z0:A:!\". 'sample_name.transcript.sorted.bam' and 'sample_name.transcript.sorted.bam.bai' are the sorted BAM file and indices generated by samtools (included in RSEM-EVAL package)."
    sample_name_dot_time: "Only generated when --time is specified. It contains time (in seconds) consumed by building references, aligning reads, estimating expression levels and calculating credibility intervals."
    sample_name_dot_stat: "This is a folder instead of a file. All model related statistics are stored in this folder. Use 'rsem-plot-model' can generate plots using this folder."
  }
}