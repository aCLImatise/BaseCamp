class: CommandLineTool
id: lotus2.cwl
inputs:
- id: in_map
  doc: Mapping file
  type: File?
  inputBinding:
    prefix: -map
- id: in_case_fastqfile_fnafile
  doc: "In case that fastqFile or fnaFile and qualFile were\nspecified in the mapping\
    \ file, this has to be the\ndirectory with input files"
  type: File?
  inputBinding:
    prefix: -i
- id: in_warning_directory_completelyremoved
  doc: "Warning: The output directory will be completely\nremoved at the beginning\
    \ of the LotuS2 run. Please\nensure this is a new directory or contains only\n\
    disposable data!"
  type: Directory?
  inputBinding:
    prefix: -o
- id: in_input_qual_file
  doc: "input qual file (not defined in case of fastq or\ninput directory)"
  type: File?
  inputBinding:
    prefix: -q
- id: in_lotuscfg_config_file
  doc: LotuS.cfg, config file with program paths
  type: File?
  inputBinding:
    prefix: -c
- id: in_sequencing_platform_pacbio
  doc: 'sequencing platform: PacBio, 454, miSeq or hiSeq'
  type: long?
  inputBinding:
    prefix: -p
- id: in_barcode
  doc: "Filepath to fastq formated file with barcodes (this\nis a processed mi/hiSeq\
    \ format). The complementary\noption in a mapping file would be the column\n\"\
    MIDfqFile\""
  type: File?
  inputBinding:
    prefix: -barcode
- id: in_sdm_option_file
  doc: "SDM option file, defaults to \\\"sdm_options.txt\\\" in\ncurrent dir"
  type: File?
  inputBinding:
    prefix: -s
- id: in_tmpdir
  doc: temporary directory used to save intermediate results
  type: Directory?
  inputBinding:
    prefix: -tmpDir
- id: in_threads
  doc: number of threads to be used
  type: long?
  inputBinding:
    prefix: -threads
- id: in_tolerate_corrupt_fq
  doc: "(1) Continue reading fastq files, even if single\nentries are incomplete (e.g.\
    \ half of qual values\nmissing). (0) Abort lotus run, if fastq file is\ncorrupt.\
    \ (Default: 0)"
  type: long?
  inputBinding:
    prefix: -tolerateCorruptFq
- id: in_verbosity
  doc: "Level of verbosity from printing all program calls\nand program output (3)\
    \ to not even printing errors\n(0). Default: 1"
  type: long?
  inputBinding:
    prefix: -verbosity
- id: in_tax_only
  doc: "Skip most of the lotus pipeline and only run a\ntaxonomic classification on\
    \ a fasta file. E.g.\n./lotus2.pl -taxOnly <some16S.fna> -refDB SLV"
  type: File?
  inputBinding:
    prefix: -taxOnly
- id: in_keep_tmp_files
  doc: "(1) save extra tmp files like chimeric OTUs or the\nraw blast output in extra\
    \ dir. (0) do not save these.\n(Default: 0)"
  type: long?
  inputBinding:
    prefix: -keepTmpFiles
- id: in_save_demultiplex
  doc: "(1) Saves all demultiplexed reads (unfiltered) in the\n[outputdir]/demultiplexed\
    \ folder, for easier data\nupload. (2) Only saves quality filtered demultiplexed\n\
    reads and continues LotuS2 run subsequently. (3) Saves\ndemultiplexed file into\
    \ a single fq, saving sample ID\nin fastq/a header. (0) No demultiplexed reads\
    \ are\nsaved. (Default: 0)"
  type: long?
  inputBinding:
    prefix: -saveDemultiplex
- id: in_keep_off_targets
  doc: "(0)?!?: keep offtarget hits against offtargetDB in\noutput fasta and otu matrix,\
    \ default 0"
  type: long?
  inputBinding:
    prefix: -keepOfftargets
- id: in_redo_tax_only
  doc: "(1) Only redo the taxonomic assignments (useful for\nreplacing a DB used on\
    \ a finished lotus run). (0)\nNormal lotus run. (Default: 0)"
  type: long?
  inputBinding:
    prefix: -redoTaxOnly
- id: in_keep_un_class_fied
  doc: "(1) Includes unclassified OTUs (i.e. no match in\nRDP/Blast database) in OTU\
    \ and taxa abundance matrix\ncalculations. (0) does not take these OTUs into\n\
    account. (Default: 0)"
  type: long?
  inputBinding:
    prefix: -keepUnclassfied
- id: in_rdp_thr
  doc: 'Confidence thresshold for RDP.(Default: 0.8)'
  type: long?
  inputBinding:
    prefix: -rdp_thr
- id: in_ref_db
  doc: "(SLV) Silva LSU (23/28S) or SSU (16/18S), (GG\ngreengenes (only SSU available),\
    \ (HITdb) (SSU, human\ngut specific), (PR2) LSU spezialized on Ocean\nenvironmentas,\
    \ (UNITE) ITS fungi specific, (beetax)\nbee gut specific database and tax names.\
    \ \\nDecide\nwhich reference DB will be used for a similarity based\ntaxonomy\
    \ annotation. Databases can be combined, with\nthe first having the highest prioirty.\
    \ E.g. \"PR2,SLV\"\nwould first use PR2 to assign OTUs and all unaasigned\nOTUs\
    \ would be searched for with SILVA, given that\n\\\"-amplicon_type LSU\\\" was\
    \ set. Can also be a custom\nfasta formatted database: in this case provide the\n\
    path to the fasta file as well as the path to the\ntaxonomy for the sequences\
    \ using -tax4refDB. See also\nonline help on how to create a custom DB. (Default:\n\
    GG)"
  type: long?
  inputBinding:
    prefix: -refDB
- id: in_green_genes_species
  doc: "(1) Create greengenes output labels instead of OTU\n(to be used with greengenes\
    \ specific programs such as\nBugBase). (Default: 0)"
  type: long?
  inputBinding:
    prefix: -greengenesSpecies
- id: in_build_phylo
  doc: "<0,1,2,>    (0) do not build OTU phylogeny; (1) use fasttree2;\n(2) use iqtree2.\
    \ (Default: 1)"
  type: boolean?
  inputBinding:
    prefix: -buildPhylo
- id: in_u_tax_thr
  doc: 'Confidence thresshold for UTAX. (Default: 0.8)'
  type: long?
  inputBinding:
    prefix: -utax_thr
- id: in_tax_group
  doc: "(bacteria) bacterial 16S rDNA annnotation, (fungi)\nfungal 18S/23S/ITS annotation.\
    \ (Default: bacteria)"
  type: long?
  inputBinding:
    prefix: -tax_group
- id: in_tax_aligner
  doc: "Previously doBlast. (0) deavtivated (just use RDP);\n(1) or (blast) use Blast;\
    \ (2) or (lambda) use LAMBDA\nto search against a 16S reference database for\n\
    taxonomic profiling of OTUs; (3) or (utax): use UTAX\nwith custom databases; (4)\
    \ or (vsearch) use VSEARCH to\nalign OTUs to custom databases; (5) or (usearch)\
    \ use\nUSEARCH to align OTUs to custom databases. (Default:\n0)"
  type: long?
  inputBinding:
    prefix: -taxAligner
- id: in_its_x_partial
  doc: "Parameters for ITSx to extract partial (%) ITS\nregions as well. (0) deactivate.\
    \ (Default: 0)"
  type: long?
  inputBinding:
    prefix: -itsx_partial
- id: in_use_best_blast_hit_only
  doc: "(1) do not use LCA (lowest common ancestor) to\ndetermine most likely taxnomic\
    \ level (not\nrecommended), instead just use the best blast hit. (0)\nLCA algorithm.\
    \ (Default: 0)"
  type: long?
  inputBinding:
    prefix: -useBestBlastHitOnly
- id: in_tax_four_ref_db
  doc: "In conjunction with a custom fasta file provided to\nargument -refDB, this\
    \ file contains for each fasta\nentry in the reference DB a taxonomic annotation\n\
    string, with the same number of taxonomic levels for\neach, tab separated."
  type: File?
  inputBinding:
    prefix: -tax4refDB
- id: in_lulu
  doc: "(1) use LULU (https://github.com/tobiasgf/lulu) to\nmerge OTUs based on their\
    \ occurence. (Default: 1)"
  type: long?
  inputBinding:
    prefix: -lulu
- id: in_lca_cover
  doc: "Min horizontal coverage of an OTU sequence against\nref DB. (Default: 0.5)"
  type: long?
  inputBinding:
    prefix: -LCA_cover
- id: in_its_x
  doc: "(1) use ITSx to only retain OTUs fitting to ITS1/ITS2\nhmm models; (0) deactivate.\
    \ (Default: 1)"
  type: long?
  inputBinding:
    prefix: -ITSx
- id: in_lca_frac
  doc: "Min fraction of reads with identical taxonomy.\n(Default: 0.9)"
  type: long?
  inputBinding:
    prefix: -LCA_frac
- id: in_amplicon_type
  doc: "(LSU) large subunit (23S/28S) or (SSU) small subunit\n(16S/18S). (Default:\
    \ SSU)"
  type: long?
  inputBinding:
    prefix: -amplicon_type
- id: in_end_rem
  doc: "DNA sequence, usually reverse primer or reverse\nadaptor; all sequence beyond\
    \ this point will be\nremoved from OTUs. This is redundant with the\n\"ReversePrimer\"\
    \ option from the mapping file, but\ngives more control (e.g. there is a problem\
    \ with\nadaptors in the OTU output). (Default: \"\")"
  type: File?
  inputBinding:
    prefix: -endRem
- id: in_swarm_distance
  doc: "Clustering threshold for OTUs when using swarm\nclustering. (Default: 1)"
  type: long?
  inputBinding:
    prefix: -swarm_distance
- id: in_flash_param
  doc: "custom flash parameters, since this contains spaces\nthe command needs to\
    \ be in parentheses: e.g.\n-flash_param \"-r 150 -s 20\". Note that this option\n\
    completely replaces the default -m and -M flash\noptions (i.e. need to be reinserted,\
    \ if wanted)]"
  type: long?
  inputBinding:
    prefix: -flash_param
- id: in_x_talk
  doc: "(1) check for crosstalk. Note that this requires in\nmost cases 64bit usearch.\
    \ (Default: 0)"
  type: long?
  inputBinding:
    prefix: -xtalk
- id: in_read_overlap
  doc: "The maximum number of basepairs that two reads are\noverlapping. (Default:\
    \ 300)"
  type: long?
  inputBinding:
    prefix: -readOverlap
- id: in_chim_skew
  doc: "Skew in chimeric fragment abundance (uchime option).\n(Default: 2)"
  type: long?
  inputBinding:
    prefix: -chim_skew
- id: in_deactivate_chimera_check
  doc: "(0) do OTU chimera checks. (1) no chimera check at\nall. (2) Deactivate deNovo\
    \ chimera check. (3)\nDeactivate ref based chimera check. (Default: 0)"
  type: long?
  inputBinding:
    prefix: -deactivateChimeraCheck
- id: in_count_chimeras
  doc: "Minimum size of dereplicated clustered, one form of\nnoise removal. Can be\
    \ complex terms like \"10:1,3:3\" ->\nmeaning at least 10x in 1 sample or 3x in\
    \ 3 different\nsamples. (Default: 2)"
  type: boolean?
  inputBinding:
    prefix: -count_chimeras
- id: in_clustering
  doc: "Sequence clustering algorithm: (1) UPARSE, (2) swarm,\n(3) cd-hit, (6) unoise3,\
    \ (7) dada2. Short keyword or\nnumber can be used to indicate clustering (Default:\n\
    uparse)"
  type: long?
  inputBinding:
    prefix: -clustering
- id: in_id
  doc: 'Clustering threshold for OTUs. (Default: 0.97)'
  type: long?
  inputBinding:
    prefix: -id
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_warning_directory_completelyremoved
  doc: "Warning: The output directory will be completely\nremoved at the beginning\
    \ of the LotuS2 run. Please\nensure this is a new directory or contains only\n\
    disposable data!"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_warning_directory_completelyremoved)
- id: out_end_rem
  doc: "DNA sequence, usually reverse primer or reverse\nadaptor; all sequence beyond\
    \ this point will be\nremoved from OTUs. This is redundant with the\n\"ReversePrimer\"\
    \ option from the mapping file, but\ngives more control (e.g. there is a problem\
    \ with\nadaptors in the OTU output). (Default: \"\")"
  type: File?
  outputBinding:
    glob: $(inputs.in_end_rem)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/lotus2:2.01--hdfd78af_1
cwlVersion: v1.1
baseCommand:
- lotus2
