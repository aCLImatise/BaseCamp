class: CommandLineTool
id: rsem_eval_calculate_score.cwl
inputs:
- id: input
  doc: SAM/BAM formatted input file. If "-" is specified for the filename, SAM/BAM
    input is instead assumed to come from standard input. RSEM-EVAL requires all alignments
    of the same read group together. For paired-end reads, RSEM-EVAL also requires
    the two mates of any alignment be adjacent. See Description section for how to
    make input file obey RSEM-EVAL's requirements.
  type: string
  inputBinding:
    position: 0
- id: assembly_fast_a_file
  doc: A multi-FASTA file contains the assembly used for calculating RSEM-EVAL score.
  type: string
  inputBinding:
    position: 1
- id: sample_name
  doc: The name of the sample analyzed. All output files are prefixed by this name
    (e.g., sample_name.isoforms.results).
  type: string
  inputBinding:
    position: 2
- id: l
  doc: For single-end data, L represents the average read length. For paired-end data,
    L represents the average fragment length. It should be a positive integer (real
    value will be rounded to the nearest integer).
  type: string
  inputBinding:
    position: 3
- id: overlap_size
  doc: 'The minimum overlap size required to join two reads together. (Default: 0)'
  type: long
  inputBinding:
    prefix: --overlap-size
- id: transcript_length_parameters
  doc: "Read the true transcript length distribution's mean and standard deviation\
    \ from <file>. This option is mutually exclusive with '--transcript-length-mean'\
    \ and '--transcript-length-sd'. (Default: off)"
  type: File
  inputBinding:
    prefix: --transcript-length-parameters
- id: transcript_length_mean
  doc: "The mean of true transcript length distribution. This option is used together\
    \ with '--transcript-length-sd' and mutually exclusive with '--estimate-transcript-length-distribution'.\
    \ (Default: learned from human Ensembl annotation and hg20 genome)"
  type: string
  inputBinding:
    prefix: --transcript-length-mean
- id: transcript_length_sd
  doc: "The standard deviation of true transcript length distribution. This option\
    \ is used together with '--transcript-length-mean' and mutually exclusive with\
    \ '--estimate-transcript-length-distribution'. (Default: learned from human Ensembl\
    \ annotation and hg20 genome)"
  type: string
  inputBinding:
    prefix: --transcript-length-sd
- id: paired_end
  doc: 'Input reads are paired-end reads. (Default: off)'
  type: boolean
  inputBinding:
    prefix: --paired-end
- id: no_qualities
  doc: 'Input reads do not contain quality scores. (Default: off)'
  type: boolean
  inputBinding:
    prefix: --no-qualities
- id: strand_specific
  doc: "The RNA-Seq protocol used to generate the reads is strand specific, i.e.,\
    \ all (upstream) reads are derived from the forward strand. This option is equivalent\
    \ to --forward-prob=1.0. With this option set, if RSEM-EVAL runs the Bowtie/Bowtie\
    \ 2 aligner, the '--norc' Bowtie/Bowtie 2 option will be used, which disables\
    \ alignment to the reverse strand of transcripts. (Default: off)"
  type: boolean
  inputBinding:
    prefix: --strand-specific
- id: bowtie2
  doc: "Use Bowtie 2 instead of Bowtie to align reads. Since currently RSEM-EVAL does\
    \ not handle indel, local and discordant alignments, the Bowtie2 parameters are\
    \ set in a way to avoid those alignments. In particular, we use options '--sensitive\
    \ --dpad 0 --gbar 99999999 --mp 1,1 --np 1 --score-min L,0,-0.1' by default. \"\
    -0.1\", the last parameter of '--score-min' is the negative value of the maximum\
    \ mismatch rate allowed. This rate can be set by option '--bowtie2-mismatch-rate'.\
    \ If reads are paired-end, we additionally use options '--no-mixed' and '--no-discordant'.\
    \ (Default: off)"
  type: boolean
  inputBinding:
    prefix: --bowtie2
- id: sam
  doc: 'Input file is in SAM format. (Default: off)'
  type: boolean
  inputBinding:
    prefix: --sam
- id: bam
  doc: 'Input file is in BAM format. (Default: off)'
  type: boolean
  inputBinding:
    prefix: --bam
- id: p
  doc: "/--num-threads <int> Number of threads to use. Both Bowtie/Bowtie2, expression\
    \ estimation and 'samtools sort' will use this many threads. (Default: 1)"
  type: boolean
  inputBinding:
    prefix: -p
- id: output_bam
  doc: 'Generate BAM outputs. (Default: off)'
  type: boolean
  inputBinding:
    prefix: --output-bam
- id: sampling_for_bam
  doc: 'When RSEM-EVAL generates a BAM file, instead of outputing all alignments a
    read has with their posterior probabilities, one alignment is sampled according
    to the posterior probabilities. The sampling procedure includes the alignment
    to the "noise" transcript, which does not appear in the BAM file. Only the sampled
    alignment has a weight of 1. All other alignments have weight 0. If the "noise"
    transcript is sampled, all alignments appeared in the BAM file should have weight
    0. (Default: off)'
  type: boolean
  inputBinding:
    prefix: --sampling-for-bam
- id: seed
  doc: 'Set the seed for the random number generators used in calculating posterior
    mean estimates and credibility intervals. The seed must be a non-negative 32 bit
    interger. (Default: off)'
  type: string
  inputBinding:
    prefix: --seed
- id: q
  doc: '/--quiet Suppress the output of logging information. (Default: off)'
  type: boolean
  inputBinding:
    prefix: -q
- id: sam_header_info
  doc: 'RSEM-EVAL reads header information from input by default. If this option is
    on, header information is read from the specified file. For the format of the
    file, please see SAM official website. (Default: "")'
  type: File
  inputBinding:
    prefix: --sam-header-info
- id: seed_length
  doc: "Seed length used by the read aligner. Providing the correct value is important\
    \ for RSEM-EVAL. If RSEM-EVAL runs Bowtie, it uses this value for Bowtie's seed\
    \ length parameter. Any read with its or at least one of its mates' (for paired-end\
    \ reads) length less than this value will be ignored. If the references are not\
    \ added poly(A) tails, the minimum allowed value is 5, otherwise, the minimum\
    \ allowed value is 25. Note that this script will only check if the value >= 5\
    \ and give a warning message if the value < 25 but >= 5. (Default: 25)"
  type: long
  inputBinding:
    prefix: --seed-length
- id: tag
  doc: 'The name of the optional field used in the SAM input for identifying a read
    with too many valid alignments. The field should have the format <tagName>:i:<value>,
    where a <value> bigger than 0 indicates a read with too many alignments. (Default:
    "")'
  type: string
  inputBinding:
    prefix: --tag
- id: bowtie_path
  doc: "The path to the Bowtie executables. (Default: the path to the Bowtie executables\
    \ is assumed to be in the user's PATH environment variable)"
  type: File
  inputBinding:
    prefix: --bowtie-path
- id: bowtie_n
  doc: '(Bowtie parameter) max # of mismatches in the seed. (Range: 0-3, Default:
    2)'
  type: long
  inputBinding:
    prefix: --bowtie-n
- id: bowtie_e
  doc: '(Bowtie parameter) max sum of mismatch quality scores across the alignment.
    (Default: 99999999)'
  type: long
  inputBinding:
    prefix: --bowtie-e
- id: bowtie_m
  doc: '(Bowtie parameter) suppress all alignments for a read if > <int> valid alignments
    exist. (Default: 200)'
  type: long
  inputBinding:
    prefix: --bowtie-m
- id: bowtie_chunk_mbs
  doc: "(Bowtie parameter) memory allocated for best first alignment calculation (Default:\
    \ 0 - use Bowtie's default)"
  type: long
  inputBinding:
    prefix: --bowtie-chunkmbs
- id: phred33_quals
  doc: 'Input quality scores are encoded as Phred+33. (Default: on)'
  type: boolean
  inputBinding:
    prefix: --phred33-quals
- id: phred64_quals
  doc: 'Input quality scores are encoded as Phred+64 (default for GA Pipeline ver.
    >= 1.3). (Default: off)'
  type: boolean
  inputBinding:
    prefix: --phred64-quals
- id: solexa_quals
  doc: 'Input quality scores are solexa encoded (from GA Pipeline ver. < 1.3). (Default:
    off)'
  type: boolean
  inputBinding:
    prefix: --solexa-quals
- id: bowtie2_path
  doc: "(Bowtie 2 parameter) The path to the Bowtie 2 executables. (Default: the path\
    \ to the Bowtie 2 executables is assumed to be in the user's PATH environment\
    \ variable)"
  type: File
  inputBinding:
    prefix: --bowtie2-path
- id: bowtie2_mismatch_rate
  doc: '(Bowtie 2 parameter) The maximum mismatch rate allowed. (Default: 0.1)'
  type: string
  inputBinding:
    prefix: --bowtie2-mismatch-rate
- id: bowtie2_k
  doc: '(Bowtie 2 parameter) Find up to <int> alignments per read. (Default: 200)'
  type: long
  inputBinding:
    prefix: --bowtie2-k
- id: bowtie2_sensitivity_level
  doc: "(Bowtie 2 parameter) Set Bowtie 2's preset options in --end-to-end mode. This\
    \ option controls how hard Bowtie 2 tries to find alignments. <string> must be\
    \ one of \"very_fast\", \"fast\", \"sensitive\" and \"very_sensitive\". The four\
    \ candidates correspond to Bowtie 2's \"--very-fast\", \"--fast\", \"--sensitive\"\
    \ and \"--very-sensitive\" options. (Default: \"sensitive\" - use Bowtie 2's default)"
  type: string
  inputBinding:
    prefix: --bowtie2-sensitivity-level
- id: forward_prob
  doc: 'Probability of generating a read from the forward strand of a transcript.
    Set to 1 for a strand-specific protocol where all (upstream) reads are derived
    from the forward strand, 0 for a strand-specific protocol where all (upstream)
    read are derived from the reverse strand, or 0.5 for a non-strand-specific protocol.
    (Default: 0.5)'
  type: string
  inputBinding:
    prefix: --forward-prob
- id: fragment_length_min
  doc: 'Minimum read(SE)/fragment(PE) length allowed. This is also the value for the
    Bowtie/Bowtie2 -I option. (Default: 1)'
  type: long
  inputBinding:
    prefix: --fragment-length-min
- id: fragment_length_max
  doc: 'Maximum read(SE)/fragment(PE) length allowed. This is also the value for the
    Bowtie/Bowtie 2 -X option. (Default: 1000)'
  type: long
  inputBinding:
    prefix: --fragment-length-max
- id: estimate_r_spd
  doc: 'Set this option if you want to estimate the read start position distribution
    (RSPD) from data. Otherwise, RSEM-EVAL will use a uniform RSPD. (Default: off)'
  type: boolean
  inputBinding:
    prefix: --estimate-rspd
- id: num_r_spd_bins
  doc: "Number of bins in the RSPD. Only relevant when '--estimate-rspd' is specified.\
    \ Use of the default setting is recommended. (Default: 20)"
  type: long
  inputBinding:
    prefix: --num-rspd-bins
- id: sam_tools_sort_mem
  doc: "Set the maximum memory per thread that can be used by 'samtools sort'. <string>\
    \ represents the memory and accepts suffices 'K/M/G'. RSEM-EVAL will pass <string>\
    \ to the '-m' option of 'samtools sort'. Please note that the default used here\
    \ is different from the default used by samtools. (Default: 1G)"
  type: string
  inputBinding:
    prefix: --samtools-sort-mem
- id: keep_intermediate_files
  doc: "Keep temporary files generated by RSEM-EVAL. RSEM-EVAL creates a temporary\
    \ directory, 'sample_name.temp', into which it puts all intermediate output files.\
    \ If this directory already exists, RSEM-EVAL overwrites all files generated by\
    \ previous RSEM-EVAL runs inside of it. By default, after RSEM-EVAL finishes,\
    \ the temporary directory is deleted. Set this option to prevent the deletion\
    \ of this directory and the intermediate files inside of it. (Default: off)"
  type: boolean
  inputBinding:
    prefix: --keep-intermediate-files
- id: temporary_folder
  doc: 'Set where to put the temporary files generated by RSEM-EVAL. If the folder
    specified does not exist, RSEM-EVAL will try to create it. (Default: sample_name.temp)'
  type: string
  inputBinding:
    prefix: --temporary-folder
- id: time
  doc: "Output time consumed by each step of RSEM-EVAL to 'sample_name.time'. (Default:\
    \ off)"
  type: boolean
  inputBinding:
    prefix: --time
outputs: []
cwlVersion: v1.1
baseCommand:
- rsem-eval-calculate-score
