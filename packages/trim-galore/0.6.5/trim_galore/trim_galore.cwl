class: CommandLineTool
id: trim_galore.cwl
inputs:
- id: in_h_slash_help
  doc: Print this help message and exits.
  type: boolean
  inputBinding:
    prefix: -h/--help
- id: in_v_slash_version
  doc: Print the version information and exits.
  type: boolean
  inputBinding:
    prefix: -v/--version
- id: in_q_slash_quality
  doc: "Trim low-quality ends from reads in addition to adapter removal. For\nRRBS\
    \ samples, quality trimming will be performed first, and adapter\ntrimming is\
    \ carried in a second round. Other files are quality and adapter\ntrimmed in a\
    \ single pass. The algorithm is the same as the one used by BWA\n(Subtract INT\
    \ from all qualities; compute partial sums from all indices\nto the end of the\
    \ sequence; cut sequence at the index at which the sum is\nminimal). Default Phred\
    \ score: 20."
  type: long
  inputBinding:
    prefix: -q/--quality
- id: in_phred_three_three
  doc: "Instructs Cutadapt to use ASCII+33 quality scores as Phred scores\n(Sanger/Illumina\
    \ 1.9+ encoding) for quality trimming. Default: ON."
  type: boolean
  inputBinding:
    prefix: --phred33
- id: in_phred_six_four
  doc: "Instructs Cutadapt to use ASCII+64 quality scores as Phred scores\n(Illumina\
    \ 1.5 encoding) for quality trimming."
  type: boolean
  inputBinding:
    prefix: --phred64
- id: in_fast_qc
  doc: Run FastQC in the default mode on the FastQ file once trimming is complete.
  type: boolean
  inputBinding:
    prefix: --fastqc
- id: in_fast_qc_args
  doc: "\"<ARGS>\"  Passes extra arguments to FastQC. If more than one argument is\
    \ to be passed\nto FastQC they must be in the form \"arg1 arg2 etc.\". An example\
    \ would be:\n--fastqc_args \"--nogroup --outdir /home/\". Passing extra arguments\
    \ will\nautomatically invoke FastQC, so --fastqc does not have to be specified\n\
    separately."
  type: boolean
  inputBinding:
    prefix: --fastqc_args
- id: in_a_slash_adapter
  doc: "Adapter sequence to be trimmed. If not specified explicitly, Trim Galore will\n\
    try to auto-detect whether the Illumina universal, Nextera transposase or Illumina\n\
    small RNA adapter sequence was used. Also see '--illumina', '--nextera' and\n\
    '--small_rna'. If no adapter can be detected within the first 1 million sequences\n\
    of the first file specified or if there is a tie between several adapter sequences,\n\
    Trim Galore defaults to '--illumina' (as long as the Illumina adapter was one\
    \ of the\noptions, else '--nextera' is the default). A single base\nmay also be\
    \ given as e.g. -a A{10}, to be expanded to -a AAAAAAAAAA."
  type: File
  inputBinding:
    prefix: -a/--adapter
- id: in_a_two_slash_adapter_two
  doc: "Optional adapter sequence to be trimmed off read 2 of paired-end files. This\n\
    option requires '--paired' to be specified as well. If the libraries to be trimmed\n\
    are smallRNA then a2 will be set to the Illumina small RNA 5' adapter automatically\n\
    (GATCGTCGGACT). A single base may also be given as e.g. -a2 A{10}, to be expanded\n\
    to -a2 AAAAAAAAAA."
  type: long
  inputBinding:
    prefix: -a2/--adapter2
- id: in_illumina
  doc: "Adapter sequence to be trimmed is the first 13bp of the Illumina universal\
    \ adapter\n'AGATCGGAAGAGC' instead of the default auto-detection of adapter sequence."
  type: boolean
  inputBinding:
    prefix: --illumina
- id: in_next_era
  doc: "Adapter sequence to be trimmed is the first 12bp of the Nextera adapter\n\
    'CTGTCTCTTATA' instead of the default auto-detection of adapter sequence."
  type: boolean
  inputBinding:
    prefix: --nextera
- id: in_small_rna
  doc: "Adapter sequence to be trimmed is the first 12bp of the Illumina Small RNA\
    \ 3' Adapter\n'TGGAATTCTCGG' instead of the default auto-detection of adapter\
    \ sequence. Selecting\nto trim smallRNA adapters will also lower the --length\
    \ value to 18bp. If the smallRNA\nlibraries are paired-end then a2 will be set\
    \ to the Illumina small RNA 5' adapter\nautomatically (GATCGTCGGACT) unless -a\
    \ 2 had been defined explicitly."
  type: boolean
  inputBinding:
    prefix: --small_rna
- id: in_consider_already_trimmed
  doc: "During adapter auto-detection, the limit set by <INT> allows the user to\n\
    set a threshold up to which the file is considered already adapter-trimmed. If\
    \ no adapter\nsequence exceeds this threshold, no additional adapter trimming\
    \ will be performed (technically,\nthe adapter is set to '-a X'). Quality trimming\
    \ is still performed as usual.\nDefault: NOT SELECTED (i.e. normal auto-detection\
    \ precedence rules apply)."
  type: long
  inputBinding:
    prefix: --consider_already_trimmed
- id: in_max_length
  doc: "Discard reads that are longer than <INT> bp after trimming. This is only advised\
    \ for\nsmallRNA sequencing to remove non-small RNA sequences."
  type: long
  inputBinding:
    prefix: --max_length
- id: in_stringency
  doc: "Overlap with adapter sequence required to trim a sequence. Defaults to a\n\
    very stringent setting of 1, i.e. even a single bp of overlapping sequence\nwill\
    \ be trimmed off from the 3' end of any read."
  type: long
  inputBinding:
    prefix: --stringency
- id: in_maximum_allowed_rate
  doc: "Maximum allowed error rate (no. of errors divided by the length of the matching\n\
    region) (default: 0.1)"
  type: long
  inputBinding:
    prefix: -e
- id: in_gzip
  doc: "Compress the output file with GZIP. If the input files are GZIP-compressed\n\
    the output files will automatically be GZIP compressed as well. As of v0.2.8 the\n\
    compression will take place on the fly."
  type: boolean
  inputBinding:
    prefix: --gzip
- id: in_dont_gzip
  doc: Output files won't be compressed with GZIP. This option overrides --gzip.
  type: boolean
  inputBinding:
    prefix: --dont_gzip
- id: in_length
  doc: "Discard reads that became shorter than length INT because of either\nquality\
    \ or adapter trimming. A value of '0' effectively disables\nthis behaviour. Default:\
    \ 20 bp.\nFor paired-end files, both reads of a read-pair need to be longer than\n\
    <INT> bp to be printed out to validated paired-end files (see option --paired).\n\
    If only one read became too short there is the possibility of keeping such\nunpaired\
    \ single-end reads (see --retain_unpaired). Default pair-cutoff: 20 bp."
  type: long
  inputBinding:
    prefix: --length
- id: in_max_n
  doc: "The total number of Ns (as integer) a read may contain before it will be removed\
    \ altogether.\nIn a paired-end setting, either read exceeding this limit will\
    \ result in the entire\npair being removed from the trimmed output files."
  type: long
  inputBinding:
    prefix: --max_n
- id: in_trim_n
  doc: Removes Ns from either side of the read. This option does currently not work
    in RRBS mode.
  type: boolean
  inputBinding:
    prefix: --trim-n
- id: in_oslash_output_dir
  doc: "If specified all output will be written to this directory instead of the current\n\
    directory. If the directory doesn't exist it will be created for you."
  type: Directory
  inputBinding:
    prefix: -o/--output_dir
- id: in_no_report_file
  doc: If specified no report file will be generated.
  type: boolean
  inputBinding:
    prefix: --no_report_file
- id: in_suppress_warn
  doc: If specified any output to STDOUT or STDERR will be suppressed.
  type: boolean
  inputBinding:
    prefix: --suppress_warn
- id: in_clip_r_one
  doc: "Instructs Trim Galore to remove <int> bp from the 5' end of read 1 (or single-end\n\
    reads). This may be useful if the qualities were very poor, or if there is some\n\
    sort of unwanted bias at the 5' end. Default: OFF."
  type: long
  inputBinding:
    prefix: --clip_R1
- id: in_clip_r_two
  doc: "Instructs Trim Galore to remove <int> bp from the 5' end of read 2 (paired-end\
    \ reads\nonly). This may be useful if the qualities were very poor, or if there\
    \ is some sort\nof unwanted bias at the 5' end. For paired-end BS-Seq, it is recommended\
    \ to remove\nthe first few bp because the end-repair reaction may introduce a\
    \ bias towards low\nmethylation. Please refer to the M-bias plot section in the\
    \ Bismark User Guide for\nsome examples. Default: OFF."
  type: long
  inputBinding:
    prefix: --clip_R2
- id: in_three_prime_clip_r_one
  doc: "Instructs Trim Galore to remove <int> bp from the 3' end of read 1 (or single-end\n\
    reads) AFTER adapter/quality trimming has been performed. This may remove some\
    \ unwanted\nbias from the 3' end that is not directly related to adapter sequence\
    \ or basecall quality.\nDefault: OFF."
  type: long
  inputBinding:
    prefix: --three_prime_clip_R1
- id: in_three_prime_clip_r_two
  doc: "Instructs Trim Galore to remove <int> bp from the 3' end of read 2 AFTER\n\
    adapter/quality trimming has been performed. This may remove some unwanted bias\
    \ from\nthe 3' end that is not directly related to adapter sequence or basecall\
    \ quality.\nDefault: OFF."
  type: long
  inputBinding:
    prefix: --three_prime_clip_R2
- id: in_two_colour_slash_next_seq
  doc: "This enables the option '--nextseq-trim=3'CUTOFF' within Cutadapt, which will\
    \ set a quality\ncutoff (that is normally given with -q instead), but qualities\
    \ of G bases are ignored.\nThis trimming is in common for the NextSeq- and NovaSeq-platforms,\
    \ where basecalls without\nany signal are called as high-quality G bases. This\
    \ is mutually exlusive with '-q INT'."
  type: long
  inputBinding:
    prefix: --2colour/--nextseq
- id: in_path_to_cut_adapt
  doc: "</path/to/cutadapt>     You may use this option to specify a path to the Cutadapt\
    \ executable,\ne.g. /my/home/cutadapt-1.7.1/bin/cutadapt. Else it is assumed that\
    \ Cutadapt is in\nthe PATH."
  type: boolean
  inputBinding:
    prefix: --path_to_cutadapt
- id: in_basename
  doc: "Use PREFERRED_NAME as the basename for output files, instead of deriving the\
    \ filenames from\nthe input files. Single-end data would be called PREFERRED_NAME_trimmed.fq(.gz),\
    \ or\nPREFERRED_NAME_val_1.fq(.gz) and PREFERRED_NAME_val_2.fq(.gz) for paired-end\
    \ data. --basename\nonly works when 1 file (single-end) or 2 files (paired-end)\
    \ are specified, but not for longer lists."
  type: File
  inputBinding:
    prefix: --basename
- id: in_j_slash_cores
  doc: "Number of cores to be used for trimming [default: 1]. For Cutadapt to work\
    \ with multiple cores, it\nrequires Python 3 as well as parallel gzip (pigz) installed\
    \ on the system. The version of Python used\nis detected from the shebang line\
    \ of the Cutadapt executable (either 'cutadapt', or a specified path).\nIf Python\
    \ 2 is detected, --cores is set to 1.\nIf pigz cannot be detected on your system,\
    \ Trim Galore reverts to using gzip compression. Please note\nthat gzip compression\
    \ will slow down multi-core processes so much that it is hardly worthwhile, please\n\
    see: https://github.com/FelixKrueger/TrimGalore/issues/16#issuecomment-458557103\
    \ for more info).\nActual core usage: It should be mentioned that the actual number\
    \ of cores used is a little convoluted.\nAssuming that Python 3 is used and pigz\
    \ is installed, --cores 2 would use 2 cores to read the input\n(probably not at\
    \ a high usage though), 2 cores to write to the output (at moderately high usage),\
    \ and\n2 cores for Cutadapt itself + 2 additional cores for Cutadapt (not sure\
    \ what they are used for) + 1 core\nfor Trim Galore itself. So this can be up\
    \ to 9 cores, even though most of them won't be used at 100% for\nmost of the\
    \ time. Paired-end processing uses twice as many cores for the validation (= writing\
    \ out) step.\n--cores 4 would then be: 4 (read) + 4 (write) + 4 (Cutadapt) + 2\
    \ (extra Cutadapt) +     1 (Trim Galore) = 15.\nIt seems that --cores 4 could\
    \ be a sweet spot, anything above has diminishing returns."
  type: long
  inputBinding:
    prefix: -j/--cores
- id: in_hard_trim_five
  doc: "Instead of performing adapter-/quality trimming, this option will simply hard-trim\
    \ sequences\nto <int> bp at the 5'-end. Once hard-trimming of files is complete,\
    \ Trim Galore will exit.\nHard-trimmed output files will end in .<int>_5prime.fq(.gz).\
    \ Here is an example:\nbefore:         CCTAAGGAAACAAGTACACTCCACACATGCATAAAGGAAATCAAATGTTATTTTTAAGAAAATGGAAAAT\n\
    --hardtrim5 20: CCTAAGGAAACAAGTACACT"
  type: long
  inputBinding:
    prefix: --hardtrim5
- id: in_hard_trim_three
  doc: "Instead of performing adapter-/quality trimming, this option will simply hard-trim\
    \ sequences\nto <int> bp at the 3'-end. Once hard-trimming of files is complete,\
    \ Trim Galore will exit.\nHard-trimmed output files will end in .<int>_3prime.fq(.gz).\
    \ Here is an example:\nbefore:         CCTAAGGAAACAAGTACACTCCACACATGCATAAAGGAAATCAAATGTTATTTTTAAGAAAATGGAAAAT\n\
    --hardtrim3 20:                                                   TTTTTAAGAAAATGGAAAAT"
  type: long
  inputBinding:
    prefix: --hardtrim3
- id: in_clock
  doc: "In this mode, reads are trimmed in a specific way that is currently used for\
    \ the Mouse\nEpigenetic Clock (see here: Multi-tissue DNA methylation age predictor\
    \ in mouse, Stubbs et al.,\nGenome Biology, 2017 18:68 https://doi.org/10.1186/s13059-017-1203-5).\
    \ Following this, Trim Galore\nwill exit.\nIn it's current implementation, the\
    \ dual-UMI RRBS reads come in the following format:\nRead 1  5' UUUUUUUU CAGTA\
    \ FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF TACTG UUUUUUUU 3'\nRead 2  3' UUUUUUUU\
    \ GTCAT FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ATGAC UUUUUUUU 5'\nWhere UUUUUUUU\
    \ is a random 8-mer unique molecular identifier (UMI), CAGTA is a constant region,\n\
    and FFFFFFF... is the actual RRBS-Fragment to be sequenced. The UMIs for Read\
    \ 1 (R1) and\nRead 2 (R2), as well as the fixed sequences (F1 or F2), are written\
    \ into the read ID and\nremoved from the actual sequence. Here is an example:\n\
    R1: @HWI-D00436:407:CCAETANXX:1:1101:4105:1905 1:N:0: CGATGTTT\nATCTAGTTCAGTACGGTGTTTTCGAATTAGAAAAATATGTATAGAGGAAATAGATATAAAGGCGTATTCGTTATTG\n\
    R2: @HWI-D00436:407:CCAETANXX:1:1101:4105:1905 3:N:0: CGATGTTT\nCAATTTTGCAGTACAAAAATAATACCTCCTCTATTTATCCAAAATCACAAAAAACCACCCACTTAACTTTCCCTAA\n\
    R1: @HWI-D00436:407:CCAETANXX:1:1101:4105:1905 1:N:0: CGATGTTT:R1:ATCTAGTT:R2:CAATTTTG:F1:CAGT:F2:CAGT\n\
    CGGTGTTTTCGAATTAGAAAAATATGTATAGAGGAAATAGATATAAAGGCGTATTCGTTATTG\nR2: @HWI-D00436:407:CCAETANXX:1:1101:4105:1905\
    \ 3:N:0: CGATGTTT:R1:ATCTAGTT:R2:CAATTTTG:F1:CAGT:F2:CAGT\nCAAAAATAATACCTCCTCTATTTATCCAAAATCACAAAAAACCACCCACTTAACTTTCCCTAA\n\
    Following clock trimming, the resulting files (.clock_UMI.R1.fq(.gz) and .clock_UMI.R2.fq(.gz))\n\
    should be adapter- and quality trimmed with Trim Galore as usual. In addition,\
    \ reads need to be trimmed\nby 15bp from their 3' end to get rid of potential\
    \ UMI and fixed sequences. The command is:\ntrim_galore --paired --three_prime_clip_R1\
    \ 15 --three_prime_clip_R2 15 *.clock_UMI.R1.fq.gz *.clock_UMI.R2.fq.gz\nFollowing\
    \ this, reads should be aligned with Bismark and deduplicated with UmiBam\nin\
    \ '--dual_index' mode (see here: https://github.com/FelixKrueger/Umi-Grinder).\
    \ UmiBam recognises\nthe UMIs within this pattern: R1:(ATCTAGTT):R2:(CAATTTTG):\
    \ as (UMI R1) and (UMI R2)."
  type: boolean
  inputBinding:
    prefix: --clock
- id: in_polya
  doc: "This is a new, still experimental, trimming mode to identify and remove poly-A\
    \ tails from sequences.\nWhen --polyA is selected, Trim Galore attempts to identify\
    \ from the first supplied sample whether\nsequences contain more often a stretch\
    \ of either 'AAAAAAAAAA' or 'TTTTTTTTTT'. This determines\nif Read 1 of a paired-end\
    \ end file, or single-end files, are trimmed for PolyA or PolyT. In case of\n\
    paired-end sequencing, Read2 is trimmed for the complementary base from the start\
    \ of the reads. The\nauto-detection uses a default of A{20} for Read1 (3'-end\
    \ trimming) and T{150} for Read2 (5'-end trimming).\nThese values may be changed\
    \ manually using the options -a and -a2.\nIn addition to trimming the sequences,\
    \ white spaces are replaced with _ and it records in the read ID\nhow many bases\
    \ were trimmed so it can later be used to identify PolyA trimmed sequences. This\
    \ is currently done\nby writing tags to both the start (\"32:A:\") and end (\"\
    _PolyA:32\") of the reads in the following example:\n@READ-ID:1:1102:22039:36996\
    \ 1:N:0:CCTAATCC\nGCCTAAGGAAACAAGTACACTCCACACATGCATAAAGGAAATCAAATGTTATTTTTAAGAAAATGGAAAATAAAAACTTTATAAACACCAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\n\
    @32:A:READ-ID:1:1102:22039:36996_1:N:0:CCTAATCC_PolyA:32\nGCCTAAGGAAACAAGTACACTCCACACATGCATAAAGGAAATCAAATGTTATTTTTAAGAAAATGGAAAATAAAAACTTTATAAACACC\n\
    PLEASE NOTE: The poly-A trimming mode expects that sequences were both adapter\
    \ and quality trimmed\nbefore looking for Poly-A tails, and it is the user's responsibility\
    \ to carry out an initial round of\ntrimming. The following sequence:\n1) trim_galore\
    \ file.fastq.gz\n2) trim_galore --polyA file_trimmed.fq.gz\n3) zcat file_trimmed_trimmed.fq.gz\
    \ | grep -A 3 PolyA | grep -v ^-- > PolyA_trimmed.fastq\nWill 1) trim qualities\
    \ and Illumina adapter contamination, 2) find and remove PolyA contamination.\n\
    Finally, if desired, 3) will specifically find PolyA trimmed sequences to a specific\
    \ FastQ file of your choice."
  type: File
  inputBinding:
    prefix: --polyA
- id: in_rrbs
  doc: "Specifies that the input file was an MspI digested RRBS sample (recognition\n\
    site: CCGG). Single-end or Read 1 sequences (paired-end) which were adapter-trimmed\n\
    will have a further 2 bp removed from their 3' end. Sequences which were merely\n\
    trimmed because of poor quality will not be shortened further. Read 2 of paired-end\n\
    libraries will in addition have the first 2 bp removed from the 5' end (by setting\n\
    '--clip_r2 2'). This is to avoid using artificial methylation calls from the filled-in\n\
    cytosine positions close to the 3' MspI site in sequenced fragments.\nThis option\
    \ is not recommended for users of the NuGEN ovation RRBS System 1-16\nkit (see\
    \ below)."
  type: boolean
  inputBinding:
    prefix: --rrbs
- id: in_non_directional
  doc: "Selecting this option for non-directional RRBS libraries will screen\nquality-trimmed\
    \ sequences for 'CAA' or 'CGA' at the start of the read\nand, if found, removes\
    \ the first two basepairs. Like with the option\n'--rrbs' this avoids using cytosine\
    \ positions that were filled-in\nduring the end-repair step. '--non_directional'\
    \ requires '--rrbs' to\nbe specified as well. Note that this option does not set\
    \ '--clip_r2 2' in\npaired-end mode."
  type: boolean
  inputBinding:
    prefix: --non_directional
- id: in_keep
  doc: "Keep the quality trimmed intermediate file. Default: off, which means\nthe\
    \ temporary file is being deleted after adapter trimming. Only has\nan effect\
    \ for RRBS samples since other FastQ files are not trimmed\nfor poor qualities\
    \ separately."
  type: boolean
  inputBinding:
    prefix: --keep
- id: in_paired
  doc: "This option performs length trimming of quality/adapter/RRBS trimmed reads\
    \ for\npaired-end files. To pass the validation test, both sequences of a sequence\
    \ pair\nare required to have a certain minimum length which is governed by the\
    \ option\n--length (see above). If only one read passes this length threshold\
    \ the\nother read can be rescued (see option --retain_unpaired). Using this option\
    \ lets\nyou discard too short read pairs without disturbing the sequence-by-sequence\
    \ order\nof FastQ files which is required by many aligners.\nTrim Galore! expects\
    \ paired-end files to be supplied in a pairwise fashion, e.g.\nfile1_1.fq file1_2.fq\
    \ SRR2_1.fq.gz SRR2_2.fq.gz ... ."
  type: boolean
  inputBinding:
    prefix: --paired
- id: in_t_slash_trim_one
  doc: "Trims 1 bp off every read from its 3' end. This may be needed for FastQ files\
    \ that\nare to be aligned as paired-end data with Bowtie. This is because Bowtie\
    \ (1) regards\nalignments like this:\nR1 --------------------------->     or this:\
    \    ----------------------->  R1\nR2 <---------------------------           \
    \            <-----------------  R2\nas invalid (whenever a start/end coordinate\
    \ is contained within the other read).\nNOTE: If you are planning to use Bowtie2,\
    \ BWA etc. you don't need to specify this option."
  type: boolean
  inputBinding:
    prefix: -t/--trim1
- id: in_retain_unpaired
  doc: "If only one of the two paired-end reads became too short, the longer\nread\
    \ will be written to either '.unpaired_1.fq' or '.unpaired_2.fq'\noutput files.\
    \ The length cutoff for unpaired single-end reads is\ngoverned by the parameters\
    \ -r1/--length_1 and -r2/--length_2. Default: OFF."
  type: boolean
  inputBinding:
    prefix: --retain_unpaired
- id: in_r_one_slash_length_one
  doc: "Unpaired single-end read length cutoff needed for read 1 to be written to\n\
    '.unpaired_1.fq' output file. These reads may be mapped in single-end mode.\n\
    Default: 35 bp."
  type: long
  inputBinding:
    prefix: -r1/--length_1
- id: in_r_two_slash_length_two
  doc: "Unpaired single-end read length cutoff needed for read 2 to be written to\n\
    '.unpaired_2.fq' output file. These reads may be mapped in single-end mode.\n\
    Default: 35 bp."
  type: long
  inputBinding:
    prefix: -r2/--length_2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_oslash_output_dir
  doc: "If specified all output will be written to this directory instead of the current\n\
    directory. If the directory doesn't exist it will be created for you."
  type: Directory
  outputBinding:
    glob: $(inputs.in_oslash_output_dir)
- id: out_polya
  doc: "This is a new, still experimental, trimming mode to identify and remove poly-A\
    \ tails from sequences.\nWhen --polyA is selected, Trim Galore attempts to identify\
    \ from the first supplied sample whether\nsequences contain more often a stretch\
    \ of either 'AAAAAAAAAA' or 'TTTTTTTTTT'. This determines\nif Read 1 of a paired-end\
    \ end file, or single-end files, are trimmed for PolyA or PolyT. In case of\n\
    paired-end sequencing, Read2 is trimmed for the complementary base from the start\
    \ of the reads. The\nauto-detection uses a default of A{20} for Read1 (3'-end\
    \ trimming) and T{150} for Read2 (5'-end trimming).\nThese values may be changed\
    \ manually using the options -a and -a2.\nIn addition to trimming the sequences,\
    \ white spaces are replaced with _ and it records in the read ID\nhow many bases\
    \ were trimmed so it can later be used to identify PolyA trimmed sequences. This\
    \ is currently done\nby writing tags to both the start (\"32:A:\") and end (\"\
    _PolyA:32\") of the reads in the following example:\n@READ-ID:1:1102:22039:36996\
    \ 1:N:0:CCTAATCC\nGCCTAAGGAAACAAGTACACTCCACACATGCATAAAGGAAATCAAATGTTATTTTTAAGAAAATGGAAAATAAAAACTTTATAAACACCAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\n\
    @32:A:READ-ID:1:1102:22039:36996_1:N:0:CCTAATCC_PolyA:32\nGCCTAAGGAAACAAGTACACTCCACACATGCATAAAGGAAATCAAATGTTATTTTTAAGAAAATGGAAAATAAAAACTTTATAAACACC\n\
    PLEASE NOTE: The poly-A trimming mode expects that sequences were both adapter\
    \ and quality trimmed\nbefore looking for Poly-A tails, and it is the user's responsibility\
    \ to carry out an initial round of\ntrimming. The following sequence:\n1) trim_galore\
    \ file.fastq.gz\n2) trim_galore --polyA file_trimmed.fq.gz\n3) zcat file_trimmed_trimmed.fq.gz\
    \ | grep -A 3 PolyA | grep -v ^-- > PolyA_trimmed.fastq\nWill 1) trim qualities\
    \ and Illumina adapter contamination, 2) find and remove PolyA contamination.\n\
    Finally, if desired, 3) will specifically find PolyA trimmed sequences to a specific\
    \ FastQ file of your choice."
  type: File
  outputBinding:
    glob: $(inputs.in_polya)
cwlVersion: v1.1
baseCommand:
- trim_galore
