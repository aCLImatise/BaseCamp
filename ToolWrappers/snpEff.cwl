class: CommandLineTool
id: snpEff.cwl
inputs:
- id: in_chr
  doc: ": Prepend 'string' to chromosome name (e.g. 'chr1' instead of '1'). Only on\
    \ TXT output."
  type: string
  inputBinding:
    prefix: -chr
- id: in_classic
  doc: ': Use old style annotations instead of Sequence Ontology and Hgvs.'
  type: boolean
  inputBinding:
    prefix: -classic
- id: in_csv_stats
  doc: ': Create CSV summary file.'
  type: File
  inputBinding:
    prefix: -csvStats
- id: in_download
  doc: ': Download reference genome if not available. Default: true'
  type: boolean
  inputBinding:
    prefix: -download
- id: in_input_format_default
  doc: ': Input format [ vcf, bed ]. Default: VCF.'
  type: string
  inputBinding:
    prefix: -i
- id: in_file_list
  doc: ': Input actually contains a list of files to process.'
  type: boolean
  inputBinding:
    prefix: -fileList
- id: in_ouput_format_default
  doc: ': Ouput format [ vcf, gatk, bed, bedAnn ]. Default: VCF.'
  type: string
  inputBinding:
    prefix: -o
- id: in_stats_htmlstats_file
  doc: ", -stats, -htmlStats         : Create HTML summary file.  Default is 'snpEff_summary.html'"
  type: boolean
  inputBinding:
    prefix: -s
- id: in_no_stats
  doc: ': Do not create stats (summary) file'
  type: boolean
  inputBinding:
    prefix: -noStats
- id: in_fi
  doc: ', -filterInterval  <file>   : Only analyze changes that intersect with the
    intervals specified in this file (you may use this option many times)'
  type: boolean
  inputBinding:
    prefix: -fi
- id: in_no_downstream
  doc: ': Do not show DOWNSTREAM changes'
  type: boolean
  inputBinding:
    prefix: -no-downstream
- id: in_no_intergenic
  doc: ': Do not show INTERGENIC changes'
  type: boolean
  inputBinding:
    prefix: -no-intergenic
- id: in_no_intron
  doc: ': Do not show INTRON changes'
  type: boolean
  inputBinding:
    prefix: -no-intron
- id: in_no_upstream
  doc: ': Do not show UPSTREAM changes'
  type: boolean
  inputBinding:
    prefix: -no-upstream
- id: in_no_utr
  doc: ': Do not show 5_PRIME_UTR or 3_PRIME_UTR changes'
  type: boolean
  inputBinding:
    prefix: -no-utr
- id: in_no
  doc: ": Do not show 'EffectType'. This option can be used several times."
  type: string
  inputBinding:
    prefix: -no
- id: in_cancer
  doc: ": Perform 'cancer' comparisons (Somatic vs Germline). Default: false"
  type: boolean
  inputBinding:
    prefix: -cancer
- id: in_cancer_samples
  doc: ": Two column TXT file defining 'oringinal \\t derived' samples."
  type: File
  inputBinding:
    prefix: -cancerSamples
- id: in_format_eff
  doc: ": Use 'EFF' field compatible with older versions (instead of 'ANN')."
  type: boolean
  inputBinding:
    prefix: -formatEff
- id: in_geneid
  doc: ': Use gene ID instead of gene name (VCF output). Default: false'
  type: boolean
  inputBinding:
    prefix: -geneId
- id: in_hgvs
  doc: ': Use HGVS annotations for amino acid sub-field. Default: true'
  type: boolean
  inputBinding:
    prefix: -hgvs
- id: in_hgv_sold
  doc: ': Use old HGVS notation. Default: false'
  type: boolean
  inputBinding:
    prefix: -hgvsOld
- id: in_hgvs_one_letter_aa
  doc: ': Use one letter Amino acid codes in HGVS notation. Default: false'
  type: boolean
  inputBinding:
    prefix: -hgvs1LetterAa
- id: in_hgv_strid
  doc: ': Use transcript ID in HGVS notation. Default: false'
  type: boolean
  inputBinding:
    prefix: -hgvsTrId
- id: in_l_of
  doc: ': Add loss of function (LOF) and Nonsense mediated decay (NMD) tags.'
  type: boolean
  inputBinding:
    prefix: -lof
- id: in_no_hgvs
  doc: ': Do not add HGVS annotations.'
  type: boolean
  inputBinding:
    prefix: -noHgvs
- id: in_nol_of
  doc: ': Do not add LOF and NMD annotations.'
  type: boolean
  inputBinding:
    prefix: -noLof
- id: in_no_shift_hgvs
  doc: ': Do not shift variants according to HGVS notation (most 3prime end).'
  type: boolean
  inputBinding:
    prefix: -noShiftHgvs
- id: in_oic_r
  doc: ': Add OICR tag in VCF file. Default: false'
  type: boolean
  inputBinding:
    prefix: -oicr
- id: in_sequence_ontology
  doc: ': Use Sequence Ontology terms. Default: true'
  type: boolean
  inputBinding:
    prefix: -sequenceOntology
- id: in_config_specify_config
  doc: ', -config                 : Specify config file'
  type: boolean
  inputBinding:
    prefix: -c
- id: in_config_option
  doc: '=value     : Override a config file option'
  type: File
  inputBinding:
    prefix: -configOption
- id: in_debug_debug_mode
  doc: ', -debug                  : Debug mode (very verbose).'
  type: boolean
  inputBinding:
    prefix: -d
- id: in_datadir
  doc: ': Override data_dir parameter from config file.'
  type: File
  inputBinding:
    prefix: -dataDir
- id: in_no_download
  doc: ': Do not download a SnpEff database, if not available locally.'
  type: boolean
  inputBinding:
    prefix: -nodownload
- id: in_no_log
  doc: ': Do not report usage statistics to server'
  type: boolean
  inputBinding:
    prefix: -noLog
- id: in_use_multiple_threads
  doc: ": Use multiple threads (implies '-noStats'). Default 'off'"
  type: boolean
  inputBinding:
    prefix: -t
- id: in_quiet_quiet_mode
  doc: ', -quiet                  : Quiet mode (do not show any messages or errors)'
  type: boolean
  inputBinding:
    prefix: -q
- id: in_verbose_verbose_mode
  doc: ', -verbose                : Verbose mode'
  type: boolean
  inputBinding:
    prefix: -v
- id: in_version
  doc: ': Show version number and exit'
  type: boolean
  inputBinding:
    prefix: -version
- id: in_canon
  doc: ': Only use canonical transcripts.'
  type: boolean
  inputBinding:
    prefix: -canon
- id: in_canon_list
  doc: ": Only use canonical transcripts, replace some transcripts using the 'gene_id\
    \       transcript_id' entries in <file>."
  type: File
  inputBinding:
    prefix: -canonList
- id: in_interaction
  doc: ': Annotate using inteactions (requires interaciton database). Default: true'
  type: boolean
  inputBinding:
    prefix: -interaction
- id: in_interval
  doc: ': Use a custom intervals in TXT/BED/BigBed/VCF/GFF file (you may use this
    option many times)'
  type: File
  inputBinding:
    prefix: -interval
- id: in_max_tsl
  doc: ': Only use transcripts having Transcript Support Level lower than <TSL_number>.'
  type: long
  inputBinding:
    prefix: -maxTSL
- id: in_motif
  doc: ': Annotate using motifs (requires Motif database). Default: true'
  type: boolean
  inputBinding:
    prefix: -motif
- id: in_next_prot
  doc: ': Annotate using NextProt (requires NextProt database).'
  type: boolean
  inputBinding:
    prefix: -nextProt
- id: in_no_genome
  doc: ': Do not load any genomic database (e.g. annotate using custom files).'
  type: boolean
  inputBinding:
    prefix: -noGenome
- id: in_noexpand_iub
  doc: ': Disable IUB code expansion in input variants'
  type: boolean
  inputBinding:
    prefix: -noExpandIUB
- id: in_no_interaction
  doc: ': Disable inteaction annotations'
  type: boolean
  inputBinding:
    prefix: -noInteraction
- id: in_no_motif
  doc: ': Disable motif annotations.'
  type: boolean
  inputBinding:
    prefix: -noMotif
- id: in_no_next_prot
  doc: ': Disable NextProt annotations.'
  type: boolean
  inputBinding:
    prefix: -noNextProt
- id: in_only_reg
  doc: ': Only use regulation tracks.'
  type: boolean
  inputBinding:
    prefix: -onlyReg
- id: in_only_protein
  doc: ': Only use protein coding transcripts. Default: false'
  type: boolean
  inputBinding:
    prefix: -onlyProtein
- id: in_only_tr
  doc: ': Only use the transcripts in this file. Format: One transcript ID per line.'
  type: File
  inputBinding:
    prefix: -onlyTr
- id: in_reg
  doc: ': Regulation track to use (this option can be used add several times).'
  type: string
  inputBinding:
    prefix: -reg
- id: in_ss
  doc: ', -spliceSiteSize <int>  : Set size for splice sites (donor and acceptor)
    in bases. Default: 2'
  type: boolean
  inputBinding:
    prefix: -ss
- id: in_splice_region_exon_size
  doc: ': Set size for splice site region within exons. Default: 3 bases'
  type: long
  inputBinding:
    prefix: -spliceRegionExonSize
- id: in_splice_region_intron_min
  doc: ': Set minimum number of bases for splice site region within intron. Default:
    3 bases'
  type: long
  inputBinding:
    prefix: -spliceRegionIntronMin
- id: in_splice_region_intron_max
  doc: ': Set maximum number of bases for splice site region within intron. Default:
    8 bases'
  type: long
  inputBinding:
    prefix: -spliceRegionIntronMax
- id: in_strict
  doc: ": Only use 'validated' transcripts (i.e. sequence has been checked). Default:\
    \ false"
  type: boolean
  inputBinding:
    prefix: -strict
- id: in_ud
  doc: ', -upDownStreamLen <int> : Set upstream downstream interval length (in bases)'
  type: boolean
  inputBinding:
    prefix: -ud
- id: in_variants_file
  doc: ': Default is STDIN'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- snpEff
