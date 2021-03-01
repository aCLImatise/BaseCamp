class: CommandLineTool
id: braker.pl.cwl
inputs:
- id: in_genome
  doc: fasta file with DNA sequences
  type: File?
  inputBinding:
    prefix: --genome
- id: in_bam
  doc: "bam file with spliced alignments from\nRNA-Seq"
  type: File?
  inputBinding:
    prefix: --bam
- id: in_hints
  doc: "Alternatively to calling braker.pl with a\nbam file, it is possible to call\
    \ it with a\nfile that contains introns extracted from\nRNA-Seq (or other data)\
    \ in gff format.\nThis flag also allows the usage of hints\nfrom additional extrinsic\
    \ sources for gene\nprediction with AUGUSTUS. To consider such\nadditional extrinsic\
    \ information, you need\nto use the flag --extrinsicCfgFiles to\nspecify parameters\
    \ for all sources in the\nhints file (including the source \"E\" for\nintron hints\
    \ from RNA-Seq). If you ran\nProtHint before calling BRAKER, specify\nthe files\
    \ prothint_augustus.gff and\nevidence_augustus.gff, here."
  type: File?
  inputBinding:
    prefix: --hints
- id: in_prot_hints
  doc: "If BRAKER is called with hints produced\nby ProtHint, specify the file\nprothint.gff,\
    \ here. Will possibly concatenated\nwith hints RNA-Seq hints if called with\n\
    --etpmode."
  type: File?
  inputBinding:
    prefix: --prothints
- id: in_evidence
  doc: "If BRAKER is called with hints produced\nby ProtHint, specify the file\nevidence.gff,\
    \ here. Will possibly be\nconcatenated with evidence from RNA-Seq\nif called with\
    \ --etpmode."
  type: File?
  inputBinding:
    prefix: --evidence
- id: in_prot_seq
  doc: "A protein sequence file in multiple fasta\nformat. This file will be used\
    \ to generate\nprotein hints for AUGUSTUS by running one\nof the three alignment\
    \ tools Exonerate\n(--prg=exonerate), Spaln (--prg=spaln) or\nGenomeThreader (--prg=gth).\
    \ Default is\nGenomeThreader if the tool is not\nspecified.  Currently, hints\
    \ from protein\nsequences are only used in the prediction\nstep with AUGUSTUS."
  type: File?
  inputBinding:
    prefix: --prot_seq
- id: in_prot_aln
  doc: "Alignment file generated from aligning\nprotein sequences against the genome\
    \ with\neither Exonerate (--prg=exonerate), or\nSpaln (--prg=spaln), or GenomeThreader\n\
    (--prg=gth).\nTo prepare alignment file, run Spaln2 with\nthe following command:\n\
    spaln -O0 ... > spalnfile\nTo prepare alignment file, run Exonerate\nwith the\
    \ following command:\nexonerate --model protein2genome \\\n--showtargetgff T ...\
    \ > exfile\nTo prepare alignment file, run\nGenomeThreader with the following\
    \ command:\ngth -genomic genome.fa  -protein \\\nprotein.fa -gff3out \\\n-skipalignmentout\
    \ ... -o gthfile\nA valid option prg=... must be specified\nin combination with\
    \ --prot_aln. Generating\ntool will not be guessed.\nCurrently, hints from protein\
    \ alignment\nfiles are only used in the prediction step\nwith AUGUSTUS."
  type: File?
  inputBinding:
    prefix: --prot_aln
- id: in_species
  doc: "Species name. Existing species will not be\noverwritten. Uses Sp_1 etc., if\
    \ no species\nis assigned"
  type: long?
  inputBinding:
    prefix: --species
- id: in_augustus_ab_initio
  doc: "output ab initio predictions by AUGUSTUS\nin addition to predictions with\
    \ hints by\nAUGUSTUS"
  type: boolean?
  inputBinding:
    prefix: --AUGUSTUS_ab_initio
- id: in_soft_masking
  doc: "Softmasking option for soft masked genome\nfiles. (Disabled by default.)"
  type: boolean?
  inputBinding:
    prefix: --softmasking
- id: in_es_mode
  doc: "Run GeneMark-ES (genome sequence only) and\ntrain AUGUSTUS on long genes predicted\
    \ by\nGeneMark-ES. Final predictions are ab initio"
  type: boolean?
  inputBinding:
    prefix: --esmode
- id: in_ep_mode
  doc: "Run GeneMark-EP with intron hints provided\nfrom protein data. This mode is\
    \ not\ncomptabile with using the aligners\nGenomeThreader, Exonerate and Spaln\
    \ (stand alone)\nwithin braker.pl. ProtHint (with Spaln) as\nalignment producing\
    \ software is compatible."
  type: boolean?
  inputBinding:
    prefix: --epmode
- id: in_etp_mode
  doc: "Run GeneMark-ETP with hints provided from\nproteins and RNA-Seq data. This\
    \ mode is not\ncompatible with using the aligners\nGenomeThreader, Exonerate and\
    \ Spaln (stand alone)\nwithin braker.pl. ProtHint (with Spaln)\nas alignment poducing\
    \ pipeline is\ncompatible."
  type: boolean?
  inputBinding:
    prefix: --etpmode
- id: in_gff_three
  doc: "Output in GFF3 format (default is gtf\nformat)"
  type: boolean?
  inputBinding:
    prefix: --gff3
- id: in_cores
  doc: "Specifies the maximum number of cores that\ncan be used during computation.\
    \ Be aware:\noptimize_augustus.pl will use max. 8\ncores; augustus will use max.\
    \ nContigs in\n--genome=file cores."
  type: boolean?
  inputBinding:
    prefix: --cores
- id: in_working_dir
  doc: "=/path/to/wd/           Set path to working directory. In the\nworking directory\
    \ results and temporary\nfiles are stored"
  type: boolean?
  inputBinding:
    prefix: --workingdir
- id: in_nice
  doc: "Execute all system calls within braker.pl\nand its submodules with bash \"\
    nice\"\n(default nice value)"
  type: boolean?
  inputBinding:
    prefix: --nice
- id: in_alternatives_from_evidence
  doc: "Output alternative transcripts based on\nexplicit evidence from hints (default\
    \ is\ntrue)."
  type: string?
  inputBinding:
    prefix: --alternatives-from-evidence
- id: in_crf
  doc: "Execute CRF training for AUGUSTUS;\nresulting parameters are only kept for\n\
    final predictions if they show higher\naccuracy than HMM parameters."
  type: boolean?
  inputBinding:
    prefix: --crf
- id: in_keep_crf
  doc: "keep CRF parameters even if they are not\nbetter than HMM parameters"
  type: boolean?
  inputBinding:
    prefix: --keepCrf
- id: in_utr
  doc: "create UTR training examples from RNA-Seq\ncoverage data; requires options\n\
    --bam=rnaseq.bam and --softmasking.\nAlternatively, if UTR parameters already\n\
    exist, training step will be skipped and\nthose pre-existing parameters are used."
  type: string?
  inputBinding:
    prefix: --UTR
- id: in_prg
  doc: "|gth|exonerate|spaln        Alignment tool for generating hints from\nsimilarity\
    \ of protein sequence data to\ngenome data. Method ph (ProtHint with Spaln)\n\
    is generally suitable; gth (GenomeThreader),\nexonerate (Exonerate) or Spaln2\n\
    (spaln) are suitable for proteins of closely\nrelated species, only.\nThis option\
    \ should be specified correctly in\ncase --prot_seq or --prot_aln options are\
    \ used\n(--prot_aln option is not required of hints\nfor AUGUSTUS were generated\
    \ with ProtHint, in\nthat case, hints are provided with --hints=file\nand --prg=ph\
    \ is not required)."
  type: File?
  inputBinding:
    prefix: --prg
- id: in_gth_two_train_genes
  doc: "Generate training gene structures for\nAUGUSTUS from GenomeThreader alignments.\n\
    (These genes can either be used for\ntraining AUGUSTUS alone with\n--trainFromGth;\
    \ or in addition to\nGeneMark-ET training genes if also a\nbam-file is supplied.)"
  type: boolean?
  inputBinding:
    prefix: --gth2traingenes
- id: in_train_from_gth
  doc: "No GeneMark-Training, train AUGUSTUS from\nGenomeThreader alignments"
  type: boolean?
  inputBinding:
    prefix: --trainFromGth
- id: in_make_hub
  doc: "Create track data hub with make_hub.py\nfor visualizing BRAKER results with\
    \ the\nUCSC GenomeBrowser"
  type: boolean?
  inputBinding:
    prefix: --makehub
- id: in_email
  doc: E-mail address for creating track data hub
  type: boolean?
  inputBinding:
    prefix: --email
- id: in_augustus_config_path
  doc: "=/path/       Set path to config directory of AUGUSTUS\n(if not specified\
    \ as environment\nvariable). BRAKER1 will assume that the\ndirectories ../bin\
    \ and ../scripts of\nAUGUSTUS are located relative to the\nAUGUSTUS_CONFIG_PATH.\
    \ If this is not the\ncase, please specify AUGUSTUS_BIN_PATH\n(and AUGUSTUS_SCRIPTS_PATH\
    \ if required).\nThe braker.pl commandline argument\n--AUGUSTUS_CONFIG_PATH has\
    \ higher priority\nthan the environment variable with the\nsame name."
  type: boolean?
  inputBinding:
    prefix: --AUGUSTUS_CONFIG_PATH
- id: in_augustus_bin_path
  doc: "=/path/          Set path to the AUGUSTUS directory that\ncontains binaries,\
    \ i.e. augustus and\netraining. This variable must only be set\nif AUGUSTUS_CONFIG_PATH\
    \ does not have\n../bin and ../scripts of AUGUSTUS relative\nto its location i.e.\
    \ for global AUGUSTUS\ninstallations. BRAKER1 will assume that\nthe directory\
    \ ../scripts of AUGUSTUS is\nlocated relative to the AUGUSTUS_BIN_PATH.\nIf this\
    \ is not the case, please specify\n--AUGUSTUS_SCRIPTS_PATH."
  type: boolean?
  inputBinding:
    prefix: --AUGUSTUS_BIN_PATH
- id: in_augustus_scripts_path
  doc: "=/path/      Set path to AUGUSTUS directory that\ncontains scripts, i.e. splitMfasta.pl.\n\
    This variable must only be set if\nAUGUSTUS_CONFIG_PATH or AUGUSTUS_BIN_PATH\n\
    do not contains the ../scripts directory\nof AUGUSTUS relative to their location,\n\
    i.e. for special cases of a global\nAUGUSTUS installation."
  type: boolean?
  inputBinding:
    prefix: --AUGUSTUS_SCRIPTS_PATH
- id: in_bam_tools_path
  doc: "=/path/to/           Set path to bamtools (if not specified as\nenvironment\
    \ BAMTOOLS_PATH variable). Has\nhigher priority than the environment\nvariable."
  type: boolean?
  inputBinding:
    prefix: --BAMTOOLS_PATH
- id: in_genemark_path
  doc: "=/path/to/           Set path to GeneMark-ET (if not specified\nas environment\
    \ GENEMARK_PATH variable).\nHas higher priority than environment\nvariable."
  type: boolean?
  inputBinding:
    prefix: --GENEMARK_PATH
- id: in_sam_tools_path
  doc: "=/path/to/           Optionally set path to samtools (if not\nspecified as\
    \ environment SAMTOOLS_PATH\nvariable) to fix BAM files automatically,\nif necessary.\
    \ Has higher priority than\nenvironment variable."
  type: boolean?
  inputBinding:
    prefix: --SAMTOOLS_PATH
- id: in_alignment_tool_path
  doc: "=/path/to/tool Set path to alignment tool\n(prothint.py, GenomeThreader, Spaln,\
    \ or Exonerate)\nif not specified as environment\nALIGNMENT_TOOL_PATH variable.\
    \ Has higher\npriority than environment variable."
  type: boolean?
  inputBinding:
    prefix: --ALIGNMENT_TOOL_PATH
- id: in_diamond_path
  doc: "=/path/to/diamond     Set path to diamond, this is an alternative\nto NCIB\
    \ blast; you only need to specify one\nout of DIAMOND_PATH or BLAST_PATH, not\
    \ both.\nDIAMOND is a lot faster that BLAST and yields\nhighly similar results\
    \ for BRAKER."
  type: File?
  inputBinding:
    prefix: --DIAMOND_PATH
- id: in_blast_path
  doc: "=/path/to/blastall      Set path to NCBI blastall and formatdb\nexecutables\
    \ if not specified as\nenvironment variable. Has higher priority\nthan environment\
    \ variable."
  type: boolean?
  inputBinding:
    prefix: --BLAST_PATH
- id: in_python_three_path
  doc: "=/path/to             Set path to python3 executable (if not\nspecified as\
    \ envirnonment variable and if\nexecutable is not in your $PATH)."
  type: boolean?
  inputBinding:
    prefix: --PYTHON3_PATH
- id: in_make_hub_path
  doc: "=/path/to             Set path to make_hub.py (if option --makehub\nis used)."
  type: boolean?
  inputBinding:
    prefix: --MAKEHUB_PATH
- id: in_cdb_tools_path
  doc: "=/path/to            cdbfasta/cdbyank are required for running\nfix_in_frame_stop_codon_genes.py.\
    \ Usage of\nthat script can be skipped with option\n'--skip_fixing_broken_genes'."
  type: boolean?
  inputBinding:
    prefix: --CDBTOOLS_PATH
- id: in_augustus_args
  doc: "=\"--some_arg=bla\"    One or several command line arguments to\nbe passed\
    \ to AUGUSTUS, if several\narguments are given, separate them by\nwhitespace,\
    \ i.e.\n\"--first_arg=sth --second_arg=sth\"."
  type: boolean?
  inputBinding:
    prefix: --augustus_args
- id: in_skip_genemark_es
  doc: "Skip GeneMark-ES and use provided\nGeneMark-ES output (e.g. provided with\n\
    --geneMarkGtf=genemark.gtf)"
  type: boolean?
  inputBinding:
    prefix: --skipGeneMark-ES
- id: in_skip_genemark_et
  doc: "Skip GeneMark-ET and use provided\nGeneMark-ET output (e.g. provided with\n\
    --geneMarkGtf=genemark.gtf)"
  type: boolean?
  inputBinding:
    prefix: --skipGeneMark-ET
- id: in_skip_genemark_ep
  doc: "Skip GeneMark-EP and use provided\nGeneMark-EP output (e.g. provided with\n\
    --geneMarkGtf=genemark.gtf)"
  type: boolean?
  inputBinding:
    prefix: --skipGeneMark-EP
- id: in_skip_genemark_etp
  doc: "Skip GeneMark-ETP and use provided\nGeneMark-ETP output (e.g. provided with\n\
    --geneMarkGtf=genemark.gtf)"
  type: boolean?
  inputBinding:
    prefix: --skipGeneMark-ETP
- id: in_genemark_gtf
  doc: "If skipGeneMark-ET is used, braker will by\ndefault look in the working directory\
    \ in\nfolder GeneMarkET for an already existing\ngtf file. Instead, you may provide\
    \ such a\nfile from another location. If geneMarkGtf\noption is set, skipGeneMark-ES/ET/EP/ETP\
    \ is\nautomatically also set."
  type: File?
  inputBinding:
    prefix: --geneMarkGtf
- id: in_rounds
  doc: "The number of optimization rounds used in\noptimize_augustus.pl (default 5)"
  type: boolean?
  inputBinding:
    prefix: --rounds
- id: in_skip_all_training
  doc: "Skip GeneMark-EX (training and\nprediction), skip AUGUSTUS training, only\n\
    runs AUGUSTUS with pre-trained and already\nexisting parameters (not recommended).\n\
    Hints from input are still generated.\nThis option automatically sets\n--useexisting\
    \ to true."
  type: boolean?
  inputBinding:
    prefix: --skipAllTraining
- id: in_use_existing
  doc: "Use the present config and parameter files\nif they exist for 'species'; will\
    \ overwrite\noriginal parameters if BRAKER performs\nan AUGUSTUS training."
  type: boolean?
  inputBinding:
    prefix: --useexisting
- id: in_filter_out_short
  doc: "It may happen that a \"good\" training gene,\ni.e. one that has intron support\
    \ from\nRNA-Seq in all introns predicted by\nGeneMark-EX, is in fact too short.\
    \ This flag\nwill discard such genes that have\nsupported introns and a neighboring\n\
    RNA-Seq supported intron upstream of the\nstart codon within the range of the\n\
    maximum CDS size of that gene and with a\nmultiplicity that is at least as high\
    \ as\n20% of the average intron multiplicity of\nthat gene."
  type: boolean?
  inputBinding:
    prefix: --filterOutShort
- id: in_skip_optimize
  doc: "Skip optimize parameter step (not\nrecommended)."
  type: boolean?
  inputBinding:
    prefix: --skipOptimize
- id: in_skip_get_an_no_from_fast_a
  doc: "Skip calling the python3 script\ngetAnnoFastaFromJoingenes.py from the\nAUGUSTUS\
    \ tool suite. This script requires\npython3, biopython and re (regular\nexpressions)\
    \ to be installed. It produces\ncoding sequence and protein FASTA files\nfrom\
    \ AUGUSTUS gene predictions and provides\ninformation about genes with in-frame\
    \ stop\ncodons. If you enable this flag, these files\nwill not be produced and\
    \ python3 and\nthe required modules will not be necessary\nfor running braker.pl."
  type: boolean?
  inputBinding:
    prefix: --skipGetAnnoFromFasta
- id: in_skip_fixing_broken_genes
  doc: "If you do not have python3, you can choose\nto skip the fixing of stop codon\
    \ including\ngenes (not recommended)."
  type: boolean?
  inputBinding:
    prefix: --skip_fixing_broken_genes
- id: in_fungus
  doc: "GeneMark-EX option: run algorithm with\nbranch point model (most useful for\
    \ fungal\ngenomes)"
  type: boolean?
  inputBinding:
    prefix: --fungus
- id: in_rnase_q_two_utr_args
  doc: "Expert option: pass alternative parameters\nto rnaseq2utr as string, default\
    \ parameters:\n-r 76 -v 100 -n 15 -i 0.7 -m 0.3 -w 70\n-c 100 -p 0.5"
  type: long?
  inputBinding:
    prefix: --rnaseq2utr_args
- id: in_eval
  doc: "Reference set to evaluate predictions\nagainst (using the eval package)"
  type: string?
  inputBinding:
    prefix: --eval
- id: in_augustus_hints_preds
  doc: "File with AUGUSTUS hints predictions; will\nuse this file as basis for UTR\
    \ training;\nonly UTR training and prediction is\nperformed if this option is\
    \ given."
  type: File?
  inputBinding:
    prefix: --AUGUSTUS_hints_preds
- id: in_flanking_dna
  doc: "Size of flanking region, must only be\nspecified if --AUGUSTUS_hints_preds\
    \ is given\n(for UTR training in a separate braker.pl\nrun that builds on top\
    \ of an existing run)"
  type: long?
  inputBinding:
    prefix: --flanking_DNA
- id: in_verbosity
  doc: "0 -> run braker.pl quiet (no log)\n1 -> only log warnings\n2 -> also log configuration\n\
    3 -> log all major steps\n4 -> very verbose, log also small steps"
  type: long?
  inputBinding:
    prefix: --verbosity
- id: in_downsampling_lambda
  doc: "The distribution of introns in training\ngene structures generated by GeneMark-EX\n\
    has a huge weight on single-exon and\nfew-exon genes. Specifying the lambda\n\
    parameter of a poisson distribution will\nmake braker call a script for downsampling\n\
    of training gene structures according to\ntheir number of introns distribution,\
    \ i.e.\ngenes with none or few exons will be\ndownsampled, genes with many exons\
    \ will be\nkept. Default value is 2.\nIf you want to avoid downsampling, you have\n\
    to specify 0."
  type: long?
  inputBinding:
    prefix: --downsampling_lambda
- id: in_check_software
  doc: "Only check whether all required software\nis installed, no execution of BRAKER"
  type: boolean?
  inputBinding:
    prefix: --checkSoftware
- id: in_no_cleanup
  doc: "Skip deletion of all files that are typically not\nused in an annotation project\
    \ after\nrunning braker.pl. (For tracking any\nproblems with a braker.pl run,\
    \ you\nmight want to keep these files, therefore\nnocleanup can be activated.)"
  type: boolean?
  inputBinding:
    prefix: --nocleanup
- id: in_genemark_hints_file
  doc: "Hints file for GeneMark-ETP produced by a\nprevious BRAKER run. Excluding\
    \ contents or\nevidence.gff."
  type: File?
  inputBinding:
    prefix: --genemark_hintsfile
- id: in_splice_sites
  doc: "list of splice site patterns for UTR\nprediction; default: GTAG, extend like\
    \ this:\n--splice_sites=GTAG,ATAC,...\nthis option only affects UTR training\n\
    example generation, not gene prediction\nby AUGUSTUS"
  type: string?
  inputBinding:
    prefix: --splice_sites
- id: in_overwrite
  doc: "Overwrite existing files (except for\nspecies parameter files) Beware, currently\n\
    not implemented properly!"
  type: boolean?
  inputBinding:
    prefix: --overwrite
- id: in_extrinsic_cfg_files
  doc: ",file2,... Depending on the mode in which braker.pl\nis executed, it may require\
    \ one ore several\nextrinsicCfgFiles. Don't use this option\nunless you know what\
    \ you are doing!"
  type: File?
  inputBinding:
    prefix: --extrinsicCfgFiles
- id: in_stranded
  doc: "=+,-,+,-,...              If UTRs are trained, i.e.~strand-specific\nbam-files\
    \ are supplied and coverage\ninformation is extracted for gene prediction,\ncreate\
    \ stranded ep hints. The order of\nstrand specifications must correspond to the\n\
    order of bam files. Possible values are\n+, -, .\nIf stranded data is provided,\
    \ ONLY coverage\ndata from the stranded data is used to\ngenerate UTR examples!\
    \ Coverage data from\nunstranded data is used in the prediction\nstep, only.\n\
    The stranded label is applied to coverage\ndata, only. Intron hints are generated\n\
    from all libraries treated as \"unstranded\"\n(because splice site filtering eliminates\n\
    intron hints from the wrong strand, anyway)."
  type: boolean?
  inputBinding:
    prefix: --stranded
- id: in_opt_cfgfile
  doc: "Optional custom config file for AUGUSTUS\nfor running PPX (currently not\n\
    implemented)"
  type: File?
  inputBinding:
    prefix: --optCfgFile
- id: in_grass
  doc: "Switch this flag on if you are using braker.pl\nfor predicting genes in grasses\
    \ with\nGeneMark-EX. The flag will enable\nGeneMark-EX to handle GC-heterogenicity\n\
    within genes more properly.\nNOTHING IMPLEMENTED FOR GRASS YET!"
  type: boolean?
  inputBinding:
    prefix: --grass
- id: in_trans_masked_fast_a
  doc: "Transmasked genome FASTA file for GeneMark-EX\n(to be used instead of the\
    \ regular genome\nFASTA file)."
  type: File?
  inputBinding:
    prefix: --transmasked_fasta
- id: in_min_contig
  doc: "Minimal contig length for GeneMark-EX, could\nfor example be set to 10000\
    \ if transmasked_fasta\noption is used because transmasking might\nintroduce many\
    \ very short contigs."
  type: long?
  inputBinding:
    prefix: --min_contig
- id: in_translation_table
  doc: "Change translation table from non-standard\nto something else.\nDOES NOT WORK\
    \ YET BECAUSE BRAKER DOESNT\nSWITCH TRANSLATION TABLE FOR GENEMARK-EX, YET!"
  type: long?
  inputBinding:
    prefix: --translation_table
- id: in_gc_probability
  doc: "Probablity for donor splice site pattern GC\nfor gene prediction with GeneMark-EX,\n\
    default value is 0.001"
  type: double?
  inputBinding:
    prefix: --gc_probability
- id: in_rna_seq
  doc: SYNOPSIS
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_diamond_path
  doc: "=/path/to/diamond     Set path to diamond, this is an alternative\nto NCIB\
    \ blast; you only need to specify one\nout of DIAMOND_PATH or BLAST_PATH, not\
    \ both.\nDIAMOND is a lot faster that BLAST and yields\nhighly similar results\
    \ for BRAKER."
  type: File?
  outputBinding:
    glob: $(inputs.in_diamond_path)
hints: []
cwlVersion: v1.1
baseCommand:
- braker.pl
