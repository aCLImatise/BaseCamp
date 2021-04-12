version 1.0

task Brakerpl {
  input {
    File? genome
    File? bam
    File? prot_seq
    File? hints
    File? prot_aln
    Int? species
    Boolean? augustus_ab_initio
    Boolean? soft_masking
    Boolean? es_mode
    Boolean? ep_mode
    Boolean? etp_mode
    Boolean? gff_three
    Boolean? cores
    Boolean? working_dir
    Boolean? nice
    String? alternatives_from_evidence
    Boolean? fungus
    Boolean? crf
    Boolean? keep_crf
    String? utr
    File? add_utr
    Int? prg
    Boolean? gth_two_train_genes
    Boolean? train_from_gth
    Boolean? make_hub
    Boolean? email
    Boolean? augustus_config_path
    Boolean? augustus_bin_path
    Boolean? augustus_scripts_path
    Boolean? bam_tools_path
    Boolean? genemark_path
    Boolean? sam_tools_path
    Boolean? prot_hint_path
    Boolean? alignment_tool_path
    File? diamond_path
    Boolean? blast_path
    Boolean? python_three_path
    Boolean? java_path
    Boolean? gush_r_path
    Boolean? make_hub_path
    Boolean? cdb_tools_path
    Boolean? augustus_args
    Boolean? skip_genemark_es
    Boolean? skip_genemark_et
    Boolean? skip_genemark_ep
    Boolean? skip_genemark_etp
    File? genemark_gtf
    Boolean? rounds
    Boolean? skip_all_training
    Boolean? use_existing
    Boolean? filter_out_short
    Boolean? skip_optimize
    Boolean? skip_iterative_prediction
    Boolean? skip_get_an_no_from_fast_a
    Boolean? skip_fixing_broken_genes
    String? eval
    Int? eval_pseudo
    File? augustus_hints_preds
    Int? flanking_dna
    Int? verbosity
    Int? downsampling_lambda
    Boolean? check_software
    Boolean? no_cleanup
    String? splice_sites
    Boolean? overwrite
    Boolean? stranded
    File? opt_cfgfile
    Boolean? grass
    File? trans_masked_fast_a
    Int? min_contig
    Int? translation_table
    Float? gc_probability
    Int? gm_max_intergenic
  }
  command <<<
    braker_pl \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if defined(prot_seq) then ("--prot_seq " +  '"' + prot_seq + '"') else ""} \
      ~{if defined(hints) then ("--hints " +  '"' + hints + '"') else ""} \
      ~{if defined(prot_aln) then ("--prot_aln " +  '"' + prot_aln + '"') else ""} \
      ~{if defined(species) then ("--species " +  '"' + species + '"') else ""} \
      ~{if (augustus_ab_initio) then "--AUGUSTUS_ab_initio" else ""} \
      ~{if (soft_masking) then "--softmasking" else ""} \
      ~{if (es_mode) then "--esmode" else ""} \
      ~{if (ep_mode) then "--epmode" else ""} \
      ~{if (etp_mode) then "--etpmode" else ""} \
      ~{if (gff_three) then "--gff3" else ""} \
      ~{if (cores) then "--cores" else ""} \
      ~{if (working_dir) then "--workingdir" else ""} \
      ~{if (nice) then "--nice" else ""} \
      ~{if defined(alternatives_from_evidence) then ("--alternatives-from-evidence " +  '"' + alternatives_from_evidence + '"') else ""} \
      ~{if (fungus) then "--fungus" else ""} \
      ~{if (crf) then "--crf" else ""} \
      ~{if (keep_crf) then "--keepCrf" else ""} \
      ~{if defined(utr) then ("--UTR " +  '"' + utr + '"') else ""} \
      ~{if defined(add_utr) then ("--addUTR " +  '"' + add_utr + '"') else ""} \
      ~{if defined(prg) then ("--prg " +  '"' + prg + '"') else ""} \
      ~{if (gth_two_train_genes) then "--gth2traingenes" else ""} \
      ~{if (train_from_gth) then "--trainFromGth" else ""} \
      ~{if (make_hub) then "--makehub" else ""} \
      ~{if (email) then "--email" else ""} \
      ~{if (augustus_config_path) then "--AUGUSTUS_CONFIG_PATH" else ""} \
      ~{if (augustus_bin_path) then "--AUGUSTUS_BIN_PATH" else ""} \
      ~{if (augustus_scripts_path) then "--AUGUSTUS_SCRIPTS_PATH" else ""} \
      ~{if (bam_tools_path) then "--BAMTOOLS_PATH" else ""} \
      ~{if (genemark_path) then "--GENEMARK_PATH" else ""} \
      ~{if (sam_tools_path) then "--SAMTOOLS_PATH" else ""} \
      ~{if (prot_hint_path) then "--PROTHINT_PATH" else ""} \
      ~{if (alignment_tool_path) then "--ALIGNMENT_TOOL_PATH" else ""} \
      ~{if (diamond_path) then "--DIAMOND_PATH" else ""} \
      ~{if (blast_path) then "--BLAST_PATH" else ""} \
      ~{if (python_three_path) then "--PYTHON3_PATH" else ""} \
      ~{if (java_path) then "--JAVA_PATH" else ""} \
      ~{if (gush_r_path) then "--GUSHR_PATH" else ""} \
      ~{if (make_hub_path) then "--MAKEHUB_PATH" else ""} \
      ~{if (cdb_tools_path) then "--CDBTOOLS_PATH" else ""} \
      ~{if (augustus_args) then "--augustus_args" else ""} \
      ~{if (skip_genemark_es) then "--skipGeneMark-ES" else ""} \
      ~{if (skip_genemark_et) then "--skipGeneMark-ET" else ""} \
      ~{if (skip_genemark_ep) then "--skipGeneMark-EP" else ""} \
      ~{if (skip_genemark_etp) then "--skipGeneMark-ETP" else ""} \
      ~{if defined(genemark_gtf) then ("--geneMarkGtf " +  '"' + genemark_gtf + '"') else ""} \
      ~{if (rounds) then "--rounds" else ""} \
      ~{if (skip_all_training) then "--skipAllTraining" else ""} \
      ~{if (use_existing) then "--useexisting" else ""} \
      ~{if (filter_out_short) then "--filterOutShort" else ""} \
      ~{if (skip_optimize) then "--skipOptimize" else ""} \
      ~{if (skip_iterative_prediction) then "--skipIterativePrediction" else ""} \
      ~{if (skip_get_an_no_from_fast_a) then "--skipGetAnnoFromFasta" else ""} \
      ~{if (skip_fixing_broken_genes) then "--skip_fixing_broken_genes" else ""} \
      ~{if defined(eval) then ("--eval " +  '"' + eval + '"') else ""} \
      ~{if defined(eval_pseudo) then ("--eval_pseudo " +  '"' + eval_pseudo + '"') else ""} \
      ~{if defined(augustus_hints_preds) then ("--AUGUSTUS_hints_preds " +  '"' + augustus_hints_preds + '"') else ""} \
      ~{if defined(flanking_dna) then ("--flanking_DNA " +  '"' + flanking_dna + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(downsampling_lambda) then ("--downsampling_lambda " +  '"' + downsampling_lambda + '"') else ""} \
      ~{if (check_software) then "--checkSoftware" else ""} \
      ~{if (no_cleanup) then "--nocleanup" else ""} \
      ~{if defined(splice_sites) then ("--splice_sites " +  '"' + splice_sites + '"') else ""} \
      ~{if (overwrite) then "--overwrite" else ""} \
      ~{if (stranded) then "--stranded" else ""} \
      ~{if defined(opt_cfgfile) then ("--optCfgFile " +  '"' + opt_cfgfile + '"') else ""} \
      ~{if (grass) then "--grass" else ""} \
      ~{if defined(trans_masked_fast_a) then ("--transmasked_fasta " +  '"' + trans_masked_fast_a + '"') else ""} \
      ~{if defined(min_contig) then ("--min_contig " +  '"' + min_contig + '"') else ""} \
      ~{if defined(translation_table) then ("--translation_table " +  '"' + translation_table + '"') else ""} \
      ~{if defined(gc_probability) then ("--gc_probability " +  '"' + gc_probability + '"') else ""} \
      ~{if defined(gm_max_intergenic) then ("--gm_max_intergenic " +  '"' + gm_max_intergenic + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/braker2:2.1.6--hdfd78af_1"
  }
  parameter_meta {
    genome: "fasta file with DNA sequences"
    bam: "bam file with spliced alignments from\\nRNA-Seq"
    prot_seq: "A protein sequence file in multi-fasta\\nformat used to generate protein hints.\\nUnless otherwise specified, braker.pl will\\nrun in \\\"EP mode\\\" which uses ProtHint to\\ngenerate protein hints and GeneMark-EP+ to\\ntrain AUGUSTUS."
    hints: "Alternatively to calling braker.pl with a\\nbam or protein fasta file, it is possible to\\ncall it with a .gff file that contains\\nintrons extracted from RNA-Seq and/or\\nprotein hints (most frequently coming\\nfrom ProtHint). If you wish to use the\\nProtHint hints, use its\\n\\\"prothint_augustus.gff\\\" output file.\\nThis flag also allows the usage of hints\\nfrom additional extrinsic sources for gene\\nprediction with AUGUSTUS. To consider such\\nadditional extrinsic information, you need\\nto use the flag --extrinsicCfgFiles to\\nspecify parameters for all sources in the\\nhints file (including the source \\\"E\\\" for\\nintron hints from RNA-Seq)"
    prot_aln: "Alignment file generated from aligning\\nprotein sequences against the genome with\\neither Exonerate (--prg=exonerate), or\\nSpaln (--prg=spaln), or GenomeThreader\\n(--prg=gth). This option can be used as\\nan alternative to --prot_seq file or protein\\nhints in the --hints file.\\nTo prepare alignment file, run Spaln2 with\\nthe following command:\\nspaln -O0 ... > spalnfile\\nTo prepare alignment file, run Exonerate\\nwith the following command:\\nexonerate --model protein2genome \\\\n--showtargetgff T ... > exfile\\nTo prepare alignment file, run\\nGenomeThreader with the following command:\\ngth -genomic genome.fa  -protein \\\\nprotein.fa -gff3out \\\\n-skipalignmentout ... -o gthfile\\nA valid option prg=... must be specified\\nin combination with --prot_aln. Generating\\ntool will not be guessed.\\nCurrently, hints from protein alignment\\nfiles are only used in the prediction step\\nwith AUGUSTUS."
    species: "Species name. Existing species will not be\\noverwritten. Uses Sp_1 etc., if no species\\nis assigned"
    augustus_ab_initio: "output ab initio predictions by AUGUSTUS\\nin addition to predictions with hints by\\nAUGUSTUS"
    soft_masking: "Softmasking option for soft masked genome\\nfiles. (Disabled by default.)"
    es_mode: "Run GeneMark-ES (genome sequence only) and\\ntrain AUGUSTUS on long genes predicted by\\nGeneMark-ES. Final predictions are ab initio"
    ep_mode: "Run ProtHint to generate protein hints (if\\nnot already specified with --hints option)\\nand use the hints in GeneMark-EP+ to create\\na training set for AUGUSTUS."
    etp_mode: "Use RNA-Seq and protein hints in GeneMark-ETP+\\nto create a training set for AUGUSTUS. The\\nprotein hints are generated by ProtHint (see\\n--epmode)."
    gff_three: "Output in GFF3 format (default is gtf\\nformat)"
    cores: "Specifies the maximum number of cores that\\ncan be used during computation. Be aware:\\noptimize_augustus.pl will use max. 8\\ncores; augustus will use max. nContigs in\\n--genome=file cores."
    working_dir: "=/path/to/wd/           Set path to working directory. In the\\nworking directory results and temporary\\nfiles are stored"
    nice: "Execute all system calls within braker.pl\\nand its submodules with bash \\\"nice\\\"\\n(default nice value)"
    alternatives_from_evidence: "Output alternative transcripts based on\\nexplicit evidence from hints (default is\\ntrue)."
    fungus: "GeneMark-EX option: run algorithm with\\nbranch point model (most useful for fungal\\ngenomes)"
    crf: "Execute CRF training for AUGUSTUS;\\nresulting parameters are only kept for\\nfinal predictions if they show higher\\naccuracy than HMM parameters."
    keep_crf: "keep CRF parameters even if they are not\\nbetter than HMM parameters"
    utr: "create UTR training examples from RNA-Seq\\ncoverage data; requires options\\n--bam=rnaseq.bam and --softmasking.\\nAlternatively, if UTR parameters already\\nexist, training step will be skipped and\\nthose pre-existing parameters are used."
    add_utr: "Adds UTRs from RNA-Seq coverage data to\\naugustus.hints.gtf file. Does not perform\\ntraining of AUGUSTUS or gene prediction with\\nAUGUSTUS and UTR parameters."
    prg: "|exonerate|spaln           Specify an alternative method for generating\\nhints from similarity of protein sequence\\ndata to genome data (alternative to the\\ndefault --epmode/--etpmode in which ProtHint\\nis used to generate the protein hints).\\nAvailable methods  are: gth (GenomeThreader),\\nexonerate (Exonerate), or spaln (Spaln2).\\nNote that this option is suitable only for\\nproteins of closely related species (while\\nthe --epmode is generally applicable).\\nThis option is required in case --prot_aln\\noption is used."
    gth_two_train_genes: "Generate training gene structures for\\nAUGUSTUS from GenomeThreader alignments.\\n(These genes can either be used for\\ntraining AUGUSTUS alone with\\n--trainFromGth; or in addition to\\nGeneMark-ET training genes if also a\\nbam-file is supplied.)"
    train_from_gth: "No GeneMark-Training, train AUGUSTUS from\\nGenomeThreader alignments"
    make_hub: "Create track data hub with make_hub.py\\nfor visualizing BRAKER results with the\\nUCSC GenomeBrowser"
    email: "E-mail address for creating track data hub"
    augustus_config_path: "=/path/       Set path to config directory of AUGUSTUS\\n(if not specified as environment\\nvariable). BRAKER1 will assume that the\\ndirectories ../bin and ../scripts of\\nAUGUSTUS are located relative to the\\nAUGUSTUS_CONFIG_PATH. If this is not the\\ncase, please specify AUGUSTUS_BIN_PATH\\n(and AUGUSTUS_SCRIPTS_PATH if required).\\nThe braker.pl commandline argument\\n--AUGUSTUS_CONFIG_PATH has higher priority\\nthan the environment variable with the\\nsame name."
    augustus_bin_path: "=/path/          Set path to the AUGUSTUS directory that\\ncontains binaries, i.e. augustus and\\netraining. This variable must only be set\\nif AUGUSTUS_CONFIG_PATH does not have\\n../bin and ../scripts of AUGUSTUS relative\\nto its location i.e. for global AUGUSTUS\\ninstallations. BRAKER1 will assume that\\nthe directory ../scripts of AUGUSTUS is\\nlocated relative to the AUGUSTUS_BIN_PATH.\\nIf this is not the case, please specify\\n--AUGUSTUS_SCRIPTS_PATH."
    augustus_scripts_path: "=/path/      Set path to AUGUSTUS directory that\\ncontains scripts, i.e. splitMfasta.pl.\\nThis variable must only be set if\\nAUGUSTUS_CONFIG_PATH or AUGUSTUS_BIN_PATH\\ndo not contains the ../scripts directory\\nof AUGUSTUS relative to their location,\\ni.e. for special cases of a global\\nAUGUSTUS installation."
    bam_tools_path: "=/path/to/           Set path to bamtools (if not specified as\\nenvironment BAMTOOLS_PATH variable). Has\\nhigher priority than the environment\\nvariable."
    genemark_path: "=/path/to/           Set path to GeneMark-ET (if not specified\\nas environment GENEMARK_PATH variable).\\nHas higher priority than environment\\nvariable."
    sam_tools_path: "=/path/to/           Optionally set path to samtools (if not\\nspecified as environment SAMTOOLS_PATH\\nvariable) to fix BAM files automatically,\\nif necessary. Has higher priority than\\nenvironment variable."
    prot_hint_path: "=/path/to/           Set path to the directory with prothint.py.\\n(if not specified as PROTHINT_PATH\\nenvironment variable). Has higher priority\\nthan environment variable."
    alignment_tool_path: "=/path/to/tool Set path to alignment tool\\n(GenomeThreader, Spaln, or Exonerate)\\nif not specified as environment\\nALIGNMENT_TOOL_PATH variable. Has higher\\npriority than environment variable."
    diamond_path: "=/path/to/diamond     Set path to diamond, this is an alternative\\nto NCIB blast; you only need to specify one\\nout of DIAMOND_PATH or BLAST_PATH, not both.\\nDIAMOND is a lot faster that BLAST and yields\\nhighly similar results for BRAKER."
    blast_path: "=/path/to/blastall      Set path to NCBI blastall and formatdb\\nexecutables if not specified as\\nenvironment variable. Has higher priority\\nthan environment variable."
    python_three_path: "=/path/to             Set path to python3 executable (if not\\nspecified as envirnonment variable and if\\nexecutable is not in your $PATH)."
    java_path: "=/path/to                Set path to java executable (if not\\nspecified as environment variable and if\\nexecutable is not in your $PATH), only\\nrequired with flags --UTR=on and --addUTR=on"
    gush_r_path: "=/path/to               Set path to gushr.py exectuable (if not\\nspecified as an environment variable and if\\nexecutable is not in your $PATH), only required\\nwith the flags --UTR=on and --addUTR=on"
    make_hub_path: "=/path/to             Set path to make_hub.py (if option --makehub\\nis used)."
    cdb_tools_path: "=/path/to            cdbfasta/cdbyank are required for running\\nfix_in_frame_stop_codon_genes.py. Usage of\\nthat script can be skipped with option\\n'--skip_fixing_broken_genes'."
    augustus_args: "=\\\"--some_arg=bla\\\"    One or several command line arguments to\\nbe passed to AUGUSTUS, if several\\narguments are given, separate them by\\nwhitespace, i.e.\\n\\\"--first_arg=sth --second_arg=sth\\\"."
    skip_genemark_es: "Skip GeneMark-ES and use provided\\nGeneMark-ES output (e.g. provided with\\n--geneMarkGtf=genemark.gtf)"
    skip_genemark_et: "Skip GeneMark-ET and use provided\\nGeneMark-ET output (e.g. provided with\\n--geneMarkGtf=genemark.gtf)"
    skip_genemark_ep: "Skip GeneMark-EP and use provided\\nGeneMark-EP output (e.g. provided with\\n--geneMarkGtf=genemark.gtf)"
    skip_genemark_etp: "Skip GeneMark-ETP and use provided\\nGeneMark-ETP output (e.g. provided with\\n--geneMarkGtf=genemark.gtf)"
    genemark_gtf: "If skipGeneMark-ET is used, braker will by\\ndefault look in the working directory in\\nfolder GeneMarkET for an already existing\\ngtf file. Instead, you may provide such a\\nfile from another location. If geneMarkGtf\\noption is set, skipGeneMark-ES/ET/EP/ETP is\\nautomatically also set. Note that gene and\\ntranscript ids in the final output may not\\nmatch the ids in the input genemark.gtf\\nbecause BRAKER internally re-assigns these\\nids."
    rounds: "The number of optimization rounds used in\\noptimize_augustus.pl (default 5)"
    skip_all_training: "Skip GeneMark-EX (training and\\nprediction), skip AUGUSTUS training, only\\nruns AUGUSTUS with pre-trained and already\\nexisting parameters (not recommended).\\nHints from input are still generated.\\nThis option automatically sets\\n--useexisting to true."
    use_existing: "Use the present config and parameter files\\nif they exist for 'species'; will overwrite\\noriginal parameters if BRAKER performs\\nan AUGUSTUS training."
    filter_out_short: "It may happen that a \\\"good\\\" training gene,\\ni.e. one that has intron support from\\nRNA-Seq in all introns predicted by\\nGeneMark-EX, is in fact too short. This flag\\nwill discard such genes that have\\nsupported introns and a neighboring\\nRNA-Seq supported intron upstream of the\\nstart codon within the range of the\\nmaximum CDS size of that gene and with a\\nmultiplicity that is at least as high as\\n20% of the average intron multiplicity of\\nthat gene."
    skip_optimize: "Skip optimize parameter step (not\\nrecommended)."
    skip_iterative_prediction: "Skip iterative prediction in --epmode (does\\nnot affect other modes, saves a bit of runtime)"
    skip_get_an_no_from_fast_a: "Skip calling the python3 script\\ngetAnnoFastaFromJoingenes.py from the\\nAUGUSTUS tool suite. This script requires\\npython3, biopython and re (regular\\nexpressions) to be installed. It produces\\ncoding sequence and protein FASTA files\\nfrom AUGUSTUS gene predictions and provides\\ninformation about genes with in-frame stop\\ncodons. If you enable this flag, these files\\nwill not be produced and python3 and\\nthe required modules will not be necessary\\nfor running braker.pl."
    skip_fixing_broken_genes: "If you do not have python3, you can choose\\nto skip the fixing of stop codon including\\ngenes (not recommended)."
    eval: "Reference set to evaluate predictions\\nagainst (using evaluation scripts from GaTech)"
    eval_pseudo: "File with pseudogenes that will be excluded\\nfrom accuracy evaluation (may be empty file)"
    augustus_hints_preds: "File with AUGUSTUS hints predictions; will\\nuse this file as basis for UTR training;\\nonly UTR training and prediction is\\nperformed if this option is given."
    flanking_dna: "Size of flanking region, must only be\\nspecified if --AUGUSTUS_hints_preds is given\\n(for UTR training in a separate braker.pl\\nrun that builds on top of an existing run)"
    verbosity: "0 -> run braker.pl quiet (no log)\\n1 -> only log warnings\\n2 -> also log configuration\\n3 -> log all major steps\\n4 -> very verbose, log also small steps"
    downsampling_lambda: "The distribution of introns in training\\ngene structures generated by GeneMark-EX\\nhas a huge weight on single-exon and\\nfew-exon genes. Specifying the lambda\\nparameter of a poisson distribution will\\nmake braker call a script for downsampling\\nof training gene structures according to\\ntheir number of introns distribution, i.e.\\ngenes with none or few exons will be\\ndownsampled, genes with many exons will be\\nkept. Default value is 2.\\nIf you want to avoid downsampling, you have\\nto specify 0."
    check_software: "Only check whether all required software\\nis installed, no execution of BRAKER"
    no_cleanup: "Skip deletion of all files that are typically not\\nused in an annotation project after\\nrunning braker.pl. (For tracking any\\nproblems with a braker.pl run, you\\nmight want to keep these files, therefore\\nnocleanup can be activated.)"
    splice_sites: "list of splice site patterns for UTR\\nprediction; default: GTAG, extend like this:\\n--splice_sites=GTAG,ATAC,...\\nthis option only affects UTR training\\nexample generation, not gene prediction\\nby AUGUSTUS"
    overwrite: "Overwrite existing files (except for\\nspecies parameter files) Beware, currently\\nnot implemented properly!"
    stranded: "=+,-,+,-,...              If UTRs are trained, i.e.~strand-specific\\nbam-files are supplied and coverage\\ninformation is extracted for gene prediction,\\ncreate stranded ep hints. The order of\\nstrand specifications must correspond to the\\norder of bam files. Possible values are\\n+, -, .\\nIf stranded data is provided, ONLY coverage\\ndata from the stranded data is used to\\ngenerate UTR examples! Coverage data from\\nunstranded data is used in the prediction\\nstep, only.\\nThe stranded label is applied to coverage\\ndata, only. Intron hints are generated\\nfrom all libraries treated as \\\"unstranded\\\"\\n(because splice site filtering eliminates\\nintron hints from the wrong strand, anyway)."
    opt_cfgfile: "Optional custom config file for AUGUSTUS\\nfor running PPX (currently not\\nimplemented)"
    grass: "Switch this flag on if you are using braker.pl\\nfor predicting genes in grasses with\\nGeneMark-EX. The flag will enable\\nGeneMark-EX to handle GC-heterogenicity\\nwithin genes more properly.\\nNOTHING IMPLEMENTED FOR GRASS YET!"
    trans_masked_fast_a: "Transmasked genome FASTA file for GeneMark-EX\\n(to be used instead of the regular genome\\nFASTA file)."
    min_contig: "Minimal contig length for GeneMark-EX, could\\nfor example be set to 10000 if transmasked_fasta\\noption is used because transmasking might\\nintroduce many very short contigs."
    translation_table: "Change translation table from non-standard\\nto something else.\\nDOES NOT WORK YET BECAUSE BRAKER DOESNT\\nSWITCH TRANSLATION TABLE FOR GENEMARK-EX, YET!"
    gc_probability: "Probablity for donor splice site pattern GC\\nfor gene prediction with GeneMark-EX,\\ndefault value is 0.001"
    gm_max_intergenic: "Adjust maximum allowed size of intergenic\\nregions in GeneMark-EX. If not used, the value\\nis automatically determined by GeneMark-EX."
  }
  output {
    File out_stdout = stdout()
    File out_hints = "${in_hints}"
    File out_diamond_path = "${in_diamond_path}"
  }
}