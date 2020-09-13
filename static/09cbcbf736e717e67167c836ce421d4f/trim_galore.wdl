version 1.0

task TrimGalore {
  input {
    Boolean? h_slash_help
    Boolean? v_slash_version
    Int? q_slash_quality
    Boolean? phred_three_three
    Boolean? phred_six_four
    Boolean? fast_qc
    Boolean? fast_qc_args
    File? a_slash_adapter
    Int? a_two_slash_adapter_two
    Boolean? illumina
    Boolean? next_era
    Boolean? small_rna
    Int? consider_already_trimmed
    Int? max_length
    Int? stringency
    Int? maximum_allowed_rate
    Boolean? gzip
    Boolean? dont_gzip
    Int? length
    Int? max_n
    Boolean? trim_n
    Directory? oslash_output_dir
    Boolean? no_report_file
    Boolean? suppress_warn
    Int? clip_r_one
    Int? clip_r_two
    Int? three_prime_clip_r_one
    Int? three_prime_clip_r_two
    Int? two_colour_slash_next_seq
    Boolean? path_to_cut_adapt
    File? basename
    Int? j_slash_cores
    Int? hard_trim_five
    Int? hard_trim_three
    Boolean? clock
    File? polya
    Boolean? rrbs
    Boolean? non_directional
    Boolean? keep
    Boolean? paired
    Boolean? t_slash_trim_one
    Boolean? retain_unpaired
    Int? r_one_slash_length_one
    Int? r_two_slash_length_two
  }
  command <<<
    trim_galore \
      ~{if (h_slash_help) then "-h/--help" else ""} \
      ~{if (v_slash_version) then "-v/--version" else ""} \
      ~{if defined(q_slash_quality) then ("-q/--quality " +  '"' + q_slash_quality + '"') else ""} \
      ~{if (phred_three_three) then "--phred33" else ""} \
      ~{if (phred_six_four) then "--phred64" else ""} \
      ~{if (fast_qc) then "--fastqc" else ""} \
      ~{if (fast_qc_args) then "--fastqc_args" else ""} \
      ~{if defined(a_slash_adapter) then ("-a/--adapter " +  '"' + a_slash_adapter + '"') else ""} \
      ~{if defined(a_two_slash_adapter_two) then ("-a2/--adapter2 " +  '"' + a_two_slash_adapter_two + '"') else ""} \
      ~{if (illumina) then "--illumina" else ""} \
      ~{if (next_era) then "--nextera" else ""} \
      ~{if (small_rna) then "--small_rna" else ""} \
      ~{if defined(consider_already_trimmed) then ("--consider_already_trimmed " +  '"' + consider_already_trimmed + '"') else ""} \
      ~{if defined(max_length) then ("--max_length " +  '"' + max_length + '"') else ""} \
      ~{if defined(stringency) then ("--stringency " +  '"' + stringency + '"') else ""} \
      ~{if defined(maximum_allowed_rate) then ("-e " +  '"' + maximum_allowed_rate + '"') else ""} \
      ~{if (gzip) then "--gzip" else ""} \
      ~{if (dont_gzip) then "--dont_gzip" else ""} \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""} \
      ~{if defined(max_n) then ("--max_n " +  '"' + max_n + '"') else ""} \
      ~{if (trim_n) then "--trim-n" else ""} \
      ~{if defined(oslash_output_dir) then ("-o/--output_dir " +  '"' + oslash_output_dir + '"') else ""} \
      ~{if (no_report_file) then "--no_report_file" else ""} \
      ~{if (suppress_warn) then "--suppress_warn" else ""} \
      ~{if defined(clip_r_one) then ("--clip_R1 " +  '"' + clip_r_one + '"') else ""} \
      ~{if defined(clip_r_two) then ("--clip_R2 " +  '"' + clip_r_two + '"') else ""} \
      ~{if defined(three_prime_clip_r_one) then ("--three_prime_clip_R1 " +  '"' + three_prime_clip_r_one + '"') else ""} \
      ~{if defined(three_prime_clip_r_two) then ("--three_prime_clip_R2 " +  '"' + three_prime_clip_r_two + '"') else ""} \
      ~{if defined(two_colour_slash_next_seq) then ("--2colour/--nextseq " +  '"' + two_colour_slash_next_seq + '"') else ""} \
      ~{if (path_to_cut_adapt) then "--path_to_cutadapt" else ""} \
      ~{if defined(basename) then ("--basename " +  '"' + basename + '"') else ""} \
      ~{if defined(j_slash_cores) then ("-j/--cores " +  '"' + j_slash_cores + '"') else ""} \
      ~{if defined(hard_trim_five) then ("--hardtrim5 " +  '"' + hard_trim_five + '"') else ""} \
      ~{if defined(hard_trim_three) then ("--hardtrim3 " +  '"' + hard_trim_three + '"') else ""} \
      ~{if (clock) then "--clock" else ""} \
      ~{if (polya) then "--polyA" else ""} \
      ~{if (rrbs) then "--rrbs" else ""} \
      ~{if (non_directional) then "--non_directional" else ""} \
      ~{if (keep) then "--keep" else ""} \
      ~{if (paired) then "--paired" else ""} \
      ~{if (t_slash_trim_one) then "-t/--trim1" else ""} \
      ~{if (retain_unpaired) then "--retain_unpaired" else ""} \
      ~{if defined(r_one_slash_length_one) then ("-r1/--length_1 " +  '"' + r_one_slash_length_one + '"') else ""} \
      ~{if defined(r_two_slash_length_two) then ("-r2/--length_2 " +  '"' + r_two_slash_length_two + '"') else ""}
  >>>
  parameter_meta {
    h_slash_help: "Print this help message and exits."
    v_slash_version: "Print the version information and exits."
    q_slash_quality: "Trim low-quality ends from reads in addition to adapter removal. For\\nRRBS samples, quality trimming will be performed first, and adapter\\ntrimming is carried in a second round. Other files are quality and adapter\\ntrimmed in a single pass. The algorithm is the same as the one used by BWA\\n(Subtract INT from all qualities; compute partial sums from all indices\\nto the end of the sequence; cut sequence at the index at which the sum is\\nminimal). Default Phred score: 20."
    phred_three_three: "Instructs Cutadapt to use ASCII+33 quality scores as Phred scores\\n(Sanger/Illumina 1.9+ encoding) for quality trimming. Default: ON."
    phred_six_four: "Instructs Cutadapt to use ASCII+64 quality scores as Phred scores\\n(Illumina 1.5 encoding) for quality trimming."
    fast_qc: "Run FastQC in the default mode on the FastQ file once trimming is complete."
    fast_qc_args: "\\\"<ARGS>\\\"  Passes extra arguments to FastQC. If more than one argument is to be passed\\nto FastQC they must be in the form \\\"arg1 arg2 etc.\\\". An example would be:\\n--fastqc_args \\\"--nogroup --outdir /home/\\\". Passing extra arguments will\\nautomatically invoke FastQC, so --fastqc does not have to be specified\\nseparately."
    a_slash_adapter: "Adapter sequence to be trimmed. If not specified explicitly, Trim Galore will\\ntry to auto-detect whether the Illumina universal, Nextera transposase or Illumina\\nsmall RNA adapter sequence was used. Also see '--illumina', '--nextera' and\\n'--small_rna'. If no adapter can be detected within the first 1 million sequences\\nof the first file specified or if there is a tie between several adapter sequences,\\nTrim Galore defaults to '--illumina' (as long as the Illumina adapter was one of the\\noptions, else '--nextera' is the default). A single base\\nmay also be given as e.g. -a A{10}, to be expanded to -a AAAAAAAAAA."
    a_two_slash_adapter_two: "Optional adapter sequence to be trimmed off read 2 of paired-end files. This\\noption requires '--paired' to be specified as well. If the libraries to be trimmed\\nare smallRNA then a2 will be set to the Illumina small RNA 5' adapter automatically\\n(GATCGTCGGACT). A single base may also be given as e.g. -a2 A{10}, to be expanded\\nto -a2 AAAAAAAAAA."
    illumina: "Adapter sequence to be trimmed is the first 13bp of the Illumina universal adapter\\n'AGATCGGAAGAGC' instead of the default auto-detection of adapter sequence."
    next_era: "Adapter sequence to be trimmed is the first 12bp of the Nextera adapter\\n'CTGTCTCTTATA' instead of the default auto-detection of adapter sequence."
    small_rna: "Adapter sequence to be trimmed is the first 12bp of the Illumina Small RNA 3' Adapter\\n'TGGAATTCTCGG' instead of the default auto-detection of adapter sequence. Selecting\\nto trim smallRNA adapters will also lower the --length value to 18bp. If the smallRNA\\nlibraries are paired-end then a2 will be set to the Illumina small RNA 5' adapter\\nautomatically (GATCGTCGGACT) unless -a 2 had been defined explicitly."
    consider_already_trimmed: "During adapter auto-detection, the limit set by <INT> allows the user to\\nset a threshold up to which the file is considered already adapter-trimmed. If no adapter\\nsequence exceeds this threshold, no additional adapter trimming will be performed (technically,\\nthe adapter is set to '-a X'). Quality trimming is still performed as usual.\\nDefault: NOT SELECTED (i.e. normal auto-detection precedence rules apply)."
    max_length: "Discard reads that are longer than <INT> bp after trimming. This is only advised for\\nsmallRNA sequencing to remove non-small RNA sequences."
    stringency: "Overlap with adapter sequence required to trim a sequence. Defaults to a\\nvery stringent setting of 1, i.e. even a single bp of overlapping sequence\\nwill be trimmed off from the 3' end of any read."
    maximum_allowed_rate: "Maximum allowed error rate (no. of errors divided by the length of the matching\\nregion) (default: 0.1)"
    gzip: "Compress the output file with GZIP. If the input files are GZIP-compressed\\nthe output files will automatically be GZIP compressed as well. As of v0.2.8 the\\ncompression will take place on the fly."
    dont_gzip: "Output files won't be compressed with GZIP. This option overrides --gzip."
    length: "Discard reads that became shorter than length INT because of either\\nquality or adapter trimming. A value of '0' effectively disables\\nthis behaviour. Default: 20 bp.\\nFor paired-end files, both reads of a read-pair need to be longer than\\n<INT> bp to be printed out to validated paired-end files (see option --paired).\\nIf only one read became too short there is the possibility of keeping such\\nunpaired single-end reads (see --retain_unpaired). Default pair-cutoff: 20 bp."
    max_n: "The total number of Ns (as integer) a read may contain before it will be removed altogether.\\nIn a paired-end setting, either read exceeding this limit will result in the entire\\npair being removed from the trimmed output files."
    trim_n: "Removes Ns from either side of the read. This option does currently not work in RRBS mode."
    oslash_output_dir: "If specified all output will be written to this directory instead of the current\\ndirectory. If the directory doesn't exist it will be created for you."
    no_report_file: "If specified no report file will be generated."
    suppress_warn: "If specified any output to STDOUT or STDERR will be suppressed."
    clip_r_one: "Instructs Trim Galore to remove <int> bp from the 5' end of read 1 (or single-end\\nreads). This may be useful if the qualities were very poor, or if there is some\\nsort of unwanted bias at the 5' end. Default: OFF."
    clip_r_two: "Instructs Trim Galore to remove <int> bp from the 5' end of read 2 (paired-end reads\\nonly). This may be useful if the qualities were very poor, or if there is some sort\\nof unwanted bias at the 5' end. For paired-end BS-Seq, it is recommended to remove\\nthe first few bp because the end-repair reaction may introduce a bias towards low\\nmethylation. Please refer to the M-bias plot section in the Bismark User Guide for\\nsome examples. Default: OFF."
    three_prime_clip_r_one: "Instructs Trim Galore to remove <int> bp from the 3' end of read 1 (or single-end\\nreads) AFTER adapter/quality trimming has been performed. This may remove some unwanted\\nbias from the 3' end that is not directly related to adapter sequence or basecall quality.\\nDefault: OFF."
    three_prime_clip_r_two: "Instructs Trim Galore to remove <int> bp from the 3' end of read 2 AFTER\\nadapter/quality trimming has been performed. This may remove some unwanted bias from\\nthe 3' end that is not directly related to adapter sequence or basecall quality.\\nDefault: OFF."
    two_colour_slash_next_seq: "This enables the option '--nextseq-trim=3'CUTOFF' within Cutadapt, which will set a quality\\ncutoff (that is normally given with -q instead), but qualities of G bases are ignored.\\nThis trimming is in common for the NextSeq- and NovaSeq-platforms, where basecalls without\\nany signal are called as high-quality G bases. This is mutually exlusive with '-q INT'."
    path_to_cut_adapt: "</path/to/cutadapt>     You may use this option to specify a path to the Cutadapt executable,\\ne.g. /my/home/cutadapt-1.7.1/bin/cutadapt. Else it is assumed that Cutadapt is in\\nthe PATH."
    basename: "Use PREFERRED_NAME as the basename for output files, instead of deriving the filenames from\\nthe input files. Single-end data would be called PREFERRED_NAME_trimmed.fq(.gz), or\\nPREFERRED_NAME_val_1.fq(.gz) and PREFERRED_NAME_val_2.fq(.gz) for paired-end data. --basename\\nonly works when 1 file (single-end) or 2 files (paired-end) are specified, but not for longer lists."
    j_slash_cores: "Number of cores to be used for trimming [default: 1]. For Cutadapt to work with multiple cores, it\\nrequires Python 3 as well as parallel gzip (pigz) installed on the system. The version of Python used\\nis detected from the shebang line of the Cutadapt executable (either 'cutadapt', or a specified path).\\nIf Python 2 is detected, --cores is set to 1.\\nIf pigz cannot be detected on your system, Trim Galore reverts to using gzip compression. Please note\\nthat gzip compression will slow down multi-core processes so much that it is hardly worthwhile, please\\nsee: https://github.com/FelixKrueger/TrimGalore/issues/16#issuecomment-458557103 for more info).\\nActual core usage: It should be mentioned that the actual number of cores used is a little convoluted.\\nAssuming that Python 3 is used and pigz is installed, --cores 2 would use 2 cores to read the input\\n(probably not at a high usage though), 2 cores to write to the output (at moderately high usage), and\\n2 cores for Cutadapt itself + 2 additional cores for Cutadapt (not sure what they are used for) + 1 core\\nfor Trim Galore itself. So this can be up to 9 cores, even though most of them won't be used at 100% for\\nmost of the time. Paired-end processing uses twice as many cores for the validation (= writing out) step.\\n--cores 4 would then be: 4 (read) + 4 (write) + 4 (Cutadapt) + 2 (extra Cutadapt) +     1 (Trim Galore) = 15.\\nIt seems that --cores 4 could be a sweet spot, anything above has diminishing returns."
    hard_trim_five: "Instead of performing adapter-/quality trimming, this option will simply hard-trim sequences\\nto <int> bp at the 5'-end. Once hard-trimming of files is complete, Trim Galore will exit.\\nHard-trimmed output files will end in .<int>_5prime.fq(.gz). Here is an example:\\nbefore:         CCTAAGGAAACAAGTACACTCCACACATGCATAAAGGAAATCAAATGTTATTTTTAAGAAAATGGAAAAT\\n--hardtrim5 20: CCTAAGGAAACAAGTACACT"
    hard_trim_three: "Instead of performing adapter-/quality trimming, this option will simply hard-trim sequences\\nto <int> bp at the 3'-end. Once hard-trimming of files is complete, Trim Galore will exit.\\nHard-trimmed output files will end in .<int>_3prime.fq(.gz). Here is an example:\\nbefore:         CCTAAGGAAACAAGTACACTCCACACATGCATAAAGGAAATCAAATGTTATTTTTAAGAAAATGGAAAAT\\n--hardtrim3 20:                                                   TTTTTAAGAAAATGGAAAAT"
    clock: "In this mode, reads are trimmed in a specific way that is currently used for the Mouse\\nEpigenetic Clock (see here: Multi-tissue DNA methylation age predictor in mouse, Stubbs et al.,\\nGenome Biology, 2017 18:68 https://doi.org/10.1186/s13059-017-1203-5). Following this, Trim Galore\\nwill exit.\\nIn it's current implementation, the dual-UMI RRBS reads come in the following format:\\nRead 1  5' UUUUUUUU CAGTA FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF TACTG UUUUUUUU 3'\\nRead 2  3' UUUUUUUU GTCAT FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ATGAC UUUUUUUU 5'\\nWhere UUUUUUUU is a random 8-mer unique molecular identifier (UMI), CAGTA is a constant region,\\nand FFFFFFF... is the actual RRBS-Fragment to be sequenced. The UMIs for Read 1 (R1) and\\nRead 2 (R2), as well as the fixed sequences (F1 or F2), are written into the read ID and\\nremoved from the actual sequence. Here is an example:\\nR1: @HWI-D00436:407:CCAETANXX:1:1101:4105:1905 1:N:0: CGATGTTT\\nATCTAGTTCAGTACGGTGTTTTCGAATTAGAAAAATATGTATAGAGGAAATAGATATAAAGGCGTATTCGTTATTG\\nR2: @HWI-D00436:407:CCAETANXX:1:1101:4105:1905 3:N:0: CGATGTTT\\nCAATTTTGCAGTACAAAAATAATACCTCCTCTATTTATCCAAAATCACAAAAAACCACCCACTTAACTTTCCCTAA\\nR1: @HWI-D00436:407:CCAETANXX:1:1101:4105:1905 1:N:0: CGATGTTT:R1:ATCTAGTT:R2:CAATTTTG:F1:CAGT:F2:CAGT\\nCGGTGTTTTCGAATTAGAAAAATATGTATAGAGGAAATAGATATAAAGGCGTATTCGTTATTG\\nR2: @HWI-D00436:407:CCAETANXX:1:1101:4105:1905 3:N:0: CGATGTTT:R1:ATCTAGTT:R2:CAATTTTG:F1:CAGT:F2:CAGT\\nCAAAAATAATACCTCCTCTATTTATCCAAAATCACAAAAAACCACCCACTTAACTTTCCCTAA\\nFollowing clock trimming, the resulting files (.clock_UMI.R1.fq(.gz) and .clock_UMI.R2.fq(.gz))\\nshould be adapter- and quality trimmed with Trim Galore as usual. In addition, reads need to be trimmed\\nby 15bp from their 3' end to get rid of potential UMI and fixed sequences. The command is:\\ntrim_galore --paired --three_prime_clip_R1 15 --three_prime_clip_R2 15 *.clock_UMI.R1.fq.gz *.clock_UMI.R2.fq.gz\\nFollowing this, reads should be aligned with Bismark and deduplicated with UmiBam\\nin '--dual_index' mode (see here: https://github.com/FelixKrueger/Umi-Grinder). UmiBam recognises\\nthe UMIs within this pattern: R1:(ATCTAGTT):R2:(CAATTTTG): as (UMI R1) and (UMI R2)."
    polya: "This is a new, still experimental, trimming mode to identify and remove poly-A tails from sequences.\\nWhen --polyA is selected, Trim Galore attempts to identify from the first supplied sample whether\\nsequences contain more often a stretch of either 'AAAAAAAAAA' or 'TTTTTTTTTT'. This determines\\nif Read 1 of a paired-end end file, or single-end files, are trimmed for PolyA or PolyT. In case of\\npaired-end sequencing, Read2 is trimmed for the complementary base from the start of the reads. The\\nauto-detection uses a default of A{20} for Read1 (3'-end trimming) and T{150} for Read2 (5'-end trimming).\\nThese values may be changed manually using the options -a and -a2.\\nIn addition to trimming the sequences, white spaces are replaced with _ and it records in the read ID\\nhow many bases were trimmed so it can later be used to identify PolyA trimmed sequences. This is currently done\\nby writing tags to both the start (\\\"32:A:\\\") and end (\\\"_PolyA:32\\\") of the reads in the following example:\\n@READ-ID:1:1102:22039:36996 1:N:0:CCTAATCC\\nGCCTAAGGAAACAAGTACACTCCACACATGCATAAAGGAAATCAAATGTTATTTTTAAGAAAATGGAAAATAAAAACTTTATAAACACCAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\\n@32:A:READ-ID:1:1102:22039:36996_1:N:0:CCTAATCC_PolyA:32\\nGCCTAAGGAAACAAGTACACTCCACACATGCATAAAGGAAATCAAATGTTATTTTTAAGAAAATGGAAAATAAAAACTTTATAAACACC\\nPLEASE NOTE: The poly-A trimming mode expects that sequences were both adapter and quality trimmed\\nbefore looking for Poly-A tails, and it is the user's responsibility to carry out an initial round of\\ntrimming. The following sequence:\\n1) trim_galore file.fastq.gz\\n2) trim_galore --polyA file_trimmed.fq.gz\\n3) zcat file_trimmed_trimmed.fq.gz | grep -A 3 PolyA | grep -v ^-- > PolyA_trimmed.fastq\\nWill 1) trim qualities and Illumina adapter contamination, 2) find and remove PolyA contamination.\\nFinally, if desired, 3) will specifically find PolyA trimmed sequences to a specific FastQ file of your choice."
    rrbs: "Specifies that the input file was an MspI digested RRBS sample (recognition\\nsite: CCGG). Single-end or Read 1 sequences (paired-end) which were adapter-trimmed\\nwill have a further 2 bp removed from their 3' end. Sequences which were merely\\ntrimmed because of poor quality will not be shortened further. Read 2 of paired-end\\nlibraries will in addition have the first 2 bp removed from the 5' end (by setting\\n'--clip_r2 2'). This is to avoid using artificial methylation calls from the filled-in\\ncytosine positions close to the 3' MspI site in sequenced fragments.\\nThis option is not recommended for users of the NuGEN ovation RRBS System 1-16\\nkit (see below)."
    non_directional: "Selecting this option for non-directional RRBS libraries will screen\\nquality-trimmed sequences for 'CAA' or 'CGA' at the start of the read\\nand, if found, removes the first two basepairs. Like with the option\\n'--rrbs' this avoids using cytosine positions that were filled-in\\nduring the end-repair step. '--non_directional' requires '--rrbs' to\\nbe specified as well. Note that this option does not set '--clip_r2 2' in\\npaired-end mode."
    keep: "Keep the quality trimmed intermediate file. Default: off, which means\\nthe temporary file is being deleted after adapter trimming. Only has\\nan effect for RRBS samples since other FastQ files are not trimmed\\nfor poor qualities separately."
    paired: "This option performs length trimming of quality/adapter/RRBS trimmed reads for\\npaired-end files. To pass the validation test, both sequences of a sequence pair\\nare required to have a certain minimum length which is governed by the option\\n--length (see above). If only one read passes this length threshold the\\nother read can be rescued (see option --retain_unpaired). Using this option lets\\nyou discard too short read pairs without disturbing the sequence-by-sequence order\\nof FastQ files which is required by many aligners.\\nTrim Galore! expects paired-end files to be supplied in a pairwise fashion, e.g.\\nfile1_1.fq file1_2.fq SRR2_1.fq.gz SRR2_2.fq.gz ... ."
    t_slash_trim_one: "Trims 1 bp off every read from its 3' end. This may be needed for FastQ files that\\nare to be aligned as paired-end data with Bowtie. This is because Bowtie (1) regards\\nalignments like this:\\nR1 --------------------------->     or this:    ----------------------->  R1\\nR2 <---------------------------                       <-----------------  R2\\nas invalid (whenever a start/end coordinate is contained within the other read).\\nNOTE: If you are planning to use Bowtie2, BWA etc. you don't need to specify this option."
    retain_unpaired: "If only one of the two paired-end reads became too short, the longer\\nread will be written to either '.unpaired_1.fq' or '.unpaired_2.fq'\\noutput files. The length cutoff for unpaired single-end reads is\\ngoverned by the parameters -r1/--length_1 and -r2/--length_2. Default: OFF."
    r_one_slash_length_one: "Unpaired single-end read length cutoff needed for read 1 to be written to\\n'.unpaired_1.fq' output file. These reads may be mapped in single-end mode.\\nDefault: 35 bp."
    r_two_slash_length_two: "Unpaired single-end read length cutoff needed for read 2 to be written to\\n'.unpaired_2.fq' output file. These reads may be mapped in single-end mode.\\nDefault: 35 bp."
  }
  output {
    File out_stdout = stdout()
    Directory out_oslash_output_dir = "${in_oslash_output_dir}"
    File out_polya = "${in_polya}"
  }
}