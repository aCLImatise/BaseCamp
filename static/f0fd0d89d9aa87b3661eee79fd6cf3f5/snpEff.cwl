class: CommandLineTool
id: snpEff.cwl
inputs:
- id: variants_file
  doc: ': Default is STDIN'
  type: string
  inputBinding:
    position: 0
- id: chr
  doc: ": Prepend 'string' to chromosome name (e.g. 'chr1' instead of '1'). Only on\
    \ TXT output."
  type: string
  inputBinding:
    prefix: -chr
- id: classic
  doc: ': Use old style annotations instead of Sequence Ontology and Hgvs.'
  type: boolean
  inputBinding:
    prefix: -classic
- id: csv_stats
  doc: ': Create CSV summary file.'
  type: File
  inputBinding:
    prefix: -csvStats
- id: download
  doc: ': Download reference genome if not available. Default: true'
  type: boolean
  inputBinding:
    prefix: -download
- id: i
  doc: ': Input format [ vcf, bed ]. Default: VCF.'
  type: string
  inputBinding:
    prefix: -i
- id: file_list
  doc: ': Input actually contains a list of files to process.'
  type: boolean
  inputBinding:
    prefix: -fileList
- id: o
  doc: ': Ouput format [ vcf, gatk, bed, bedAnn ]. Default: VCF.'
  type: string
  inputBinding:
    prefix: -o
- id: s
  doc: ", -stats, -htmlStats         : Create HTML summary file.  Default is 'snpEff_summary.html'"
  type: boolean
  inputBinding:
    prefix: -s
- id: no_stats
  doc: ': Do not create stats (summary) file'
  type: boolean
  inputBinding:
    prefix: -noStats
- id: fi
  doc: ', -filterInterval  <file>   : Only analyze changes that intersect with the
    intervals specified in this file (you may use this option many times)'
  type: boolean
  inputBinding:
    prefix: -fi
- id: no_downstream
  doc: ': Do not show DOWNSTREAM changes'
  type: boolean
  inputBinding:
    prefix: -no-downstream
- id: no_intergenic
  doc: ': Do not show INTERGENIC changes'
  type: boolean
  inputBinding:
    prefix: -no-intergenic
- id: no_intron
  doc: ': Do not show INTRON changes'
  type: boolean
  inputBinding:
    prefix: -no-intron
- id: no_upstream
  doc: ': Do not show UPSTREAM changes'
  type: boolean
  inputBinding:
    prefix: -no-upstream
- id: no_utr
  doc: ': Do not show 5_PRIME_UTR or 3_PRIME_UTR changes'
  type: boolean
  inputBinding:
    prefix: -no-utr
- id: no
  doc: ": Do not show 'EffectType'. This option can be used several times."
  type: string
  inputBinding:
    prefix: -no
- id: cancer
  doc: ": Perform 'cancer' comparisons (Somatic vs Germline). Default: false"
  type: boolean
  inputBinding:
    prefix: -cancer
- id: cancer_samples
  doc: ": Two column TXT file defining 'oringinal \\t derived' samples."
  type: File
  inputBinding:
    prefix: -cancerSamples
- id: format_eff
  doc: ": Use 'EFF' field compatible with older versions (instead of 'ANN')."
  type: boolean
  inputBinding:
    prefix: -formatEff
- id: geneid
  doc: ': Use gene ID instead of gene name (VCF output). Default: false'
  type: boolean
  inputBinding:
    prefix: -geneId
- id: hgvs
  doc: ': Use HGVS annotations for amino acid sub-field. Default: true'
  type: boolean
  inputBinding:
    prefix: -hgvs
- id: hgv_sold
  doc: ': Use old HGVS notation. Default: false'
  type: boolean
  inputBinding:
    prefix: -hgvsOld
- id: hgvs1letteraa
  doc: ': Use one letter Amino acid codes in HGVS notation. Default: false'
  type: boolean
  inputBinding:
    prefix: -hgvs1LetterAa
- id: hgv_strid
  doc: ': Use transcript ID in HGVS notation. Default: false'
  type: boolean
  inputBinding:
    prefix: -hgvsTrId
- id: l_of
  doc: ': Add loss of function (LOF) and Nonsense mediated decay (NMD) tags.'
  type: boolean
  inputBinding:
    prefix: -lof
- id: no_hgvs
  doc: ': Do not add HGVS annotations.'
  type: boolean
  inputBinding:
    prefix: -noHgvs
- id: nol_of
  doc: ': Do not add LOF and NMD annotations.'
  type: boolean
  inputBinding:
    prefix: -noLof
- id: no_shift_hgvs
  doc: ': Do not shift variants according to HGVS notation (most 3prime end).'
  type: boolean
  inputBinding:
    prefix: -noShiftHgvs
- id: oic_r
  doc: ': Add OICR tag in VCF file. Default: false'
  type: boolean
  inputBinding:
    prefix: -oicr
- id: sequence_ontology
  doc: ': Use Sequence Ontology terms. Default: true'
  type: boolean
  inputBinding:
    prefix: -sequenceOntology
- id: c
  doc: ', -config                 : Specify config file'
  type: boolean
  inputBinding:
    prefix: -c
- id: config_option
  doc: '=value     : Override a config file option'
  type: string
  inputBinding:
    prefix: -configOption
- id: d
  doc: ', -debug                  : Debug mode (very verbose).'
  type: boolean
  inputBinding:
    prefix: -d
- id: datadir
  doc: ': Override data_dir parameter from config file.'
  type: File
  inputBinding:
    prefix: -dataDir
- id: download
  doc: ': Download a SnpEff database, if not available locally. Default: true'
  type: boolean
  inputBinding:
    prefix: -download
- id: no_download
  doc: ': Do not download a SnpEff database, if not available locally.'
  type: boolean
  inputBinding:
    prefix: -nodownload
- id: no_log
  doc: ': Do not report usage statistics to server'
  type: boolean
  inputBinding:
    prefix: -noLog
- id: t
  doc: ": Use multiple threads (implies '-noStats'). Default 'off'"
  type: boolean
  inputBinding:
    prefix: -t
- id: q
  doc: ', -quiet                  : Quiet mode (do not show any messages or errors)'
  type: boolean
  inputBinding:
    prefix: -q
- id: v
  doc: ', -verbose                : Verbose mode'
  type: boolean
  inputBinding:
    prefix: -v
- id: version
  doc: ': Show version number and exit'
  type: boolean
  inputBinding:
    prefix: -version
- id: canon
  doc: ': Only use canonical transcripts.'
  type: boolean
  inputBinding:
    prefix: -canon
- id: canon_list
  doc: ": Only use canonical transcripts, replace some transcripts using the 'gene_id\
    \       transcript_id' entries in <file>."
  type: File
  inputBinding:
    prefix: -canonList
- id: interaction
  doc: ': Annotate using inteactions (requires interaciton database). Default: true'
  type: boolean
  inputBinding:
    prefix: -interaction
- id: interval
  doc: ': Use a custom intervals in TXT/BED/BigBed/VCF/GFF file (you may use this
    option many times)'
  type: File
  inputBinding:
    prefix: -interval
- id: max_tsl
  doc: ': Only use transcripts having Transcript Support Level lower than <TSL_number>.'
  type: string
  inputBinding:
    prefix: -maxTSL
- id: motif
  doc: ': Annotate using motifs (requires Motif database). Default: true'
  type: boolean
  inputBinding:
    prefix: -motif
- id: next_prot
  doc: ': Annotate using NextProt (requires NextProt database).'
  type: boolean
  inputBinding:
    prefix: -nextProt
- id: no_genome
  doc: ': Do not load any genomic database (e.g. annotate using custom files).'
  type: boolean
  inputBinding:
    prefix: -noGenome
- id: noexpand_iub
  doc: ': Disable IUB code expansion in input variants'
  type: boolean
  inputBinding:
    prefix: -noExpandIUB
- id: no_interaction
  doc: ': Disable inteaction annotations'
  type: boolean
  inputBinding:
    prefix: -noInteraction
- id: no_motif
  doc: ': Disable motif annotations.'
  type: boolean
  inputBinding:
    prefix: -noMotif
- id: no_next_prot
  doc: ': Disable NextProt annotations.'
  type: boolean
  inputBinding:
    prefix: -noNextProt
- id: only_reg
  doc: ': Only use regulation tracks.'
  type: boolean
  inputBinding:
    prefix: -onlyReg
- id: only_protein
  doc: ': Only use protein coding transcripts. Default: false'
  type: boolean
  inputBinding:
    prefix: -onlyProtein
- id: only_tr
  doc: ': Only use the transcripts in this file. Format: One transcript ID per line.'
  type: File
  inputBinding:
    prefix: -onlyTr
- id: reg
  doc: ': Regulation track to use (this option can be used add several times).'
  type: string
  inputBinding:
    prefix: -reg
- id: ss
  doc: ', -spliceSiteSize <int>  : Set size for splice sites (donor and acceptor)
    in bases. Default: 2'
  type: boolean
  inputBinding:
    prefix: -ss
- id: splice_region_exon_size
  doc: ': Set size for splice site region within exons. Default: 3 bases'
  type: long
  inputBinding:
    prefix: -spliceRegionExonSize
- id: splice_region_intron_min
  doc: ': Set minimum number of bases for splice site region within intron. Default:
    3 bases'
  type: long
  inputBinding:
    prefix: -spliceRegionIntronMin
- id: splice_region_intron_max
  doc: ': Set maximum number of bases for splice site region within intron. Default:
    8 bases'
  type: long
  inputBinding:
    prefix: -spliceRegionIntronMax
- id: strict
  doc: ": Only use 'validated' transcripts (i.e. sequence has been checked). Default:\
    \ false"
  type: boolean
  inputBinding:
    prefix: -strict
- id: ud
  doc: ', -upDownStreamLen <int> : Set upstream downstream interval length (in bases)'
  type: boolean
  inputBinding:
    prefix: -ud
outputs: []
cwlVersion: v1.1
baseCommand:
- snpEff
