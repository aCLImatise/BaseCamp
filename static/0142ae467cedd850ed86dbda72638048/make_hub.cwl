class: CommandLineTool
id: make_hub.py.cwl
inputs:
- id: print_usage_examples
  doc: Print usage examples for make_hub.py
  type: boolean
  inputBinding:
    prefix: --printUsageExamples
- id: email
  doc: Contact e-mail adress for assembly hub
  type: string
  inputBinding:
    prefix: --email
- id: genome
  doc: Genome fasta file (possibly softmasked)
  type: string
  inputBinding:
    prefix: --genome
- id: long_label
  doc: Long label for hub, e.g. species name in english and latin, pass in single
    quotation marks, e.g. --long_label 'Dorosphila melanogster (fruit fly)'
  type: string
  inputBinding:
    prefix: --long_label
- id: short_label
  doc: Short label for hub, will also be used as directory name for hub, should not
    contain spaces or special characters, e.g. --short_label fly
  type: string
  inputBinding:
    prefix: --short_label
- id: bam
  doc: BAM file(s) - space separated - with RNA-Seq information, by default will be
    displayed as bigWig
  type: string[]
  inputBinding:
    prefix: --bam
- id: cores
  doc: Number of cores for samtools sort processes
  type: string
  inputBinding:
    prefix: --cores
- id: display_bam_as_bam
  doc: Display BAM file(s) as bam tracks
  type: boolean
  inputBinding:
    prefix: --display_bam_as_bam
- id: gem_oma_filtered_predictions
  doc: GFF3 output file of Gemoma
  type: string
  inputBinding:
    prefix: --gemoma_filtered_predictions
- id: braker_out_dir
  doc: BRAKER output directory with GTF files
  type: string
  inputBinding:
    prefix: --braker_out_dir
- id: maker_gff
  doc: MAKER2 output file in GFF3 format
  type: string
  inputBinding:
    prefix: --maker_gff
- id: glimmer_gff
  doc: GFF3 output file of GlimmerHMM
  type: string
  inputBinding:
    prefix: --glimmer_gff
- id: snap_gff
  doc: SNAP output file in GFF3 format
  type: string
  inputBinding:
    prefix: --snap_gff
- id: an_not
  doc: GTF file with reference annotation
  type: string
  inputBinding:
    prefix: --annot
- id: gene_track
  doc: 'Gene track with user specified label, argument must be formatted as follows:
    --gene_track file.gtf tracklabel'
  type: string[]
  inputBinding:
    prefix: --gene_track
- id: add_track
  doc: Add track(s) to existing hub
  type: boolean
  inputBinding:
    prefix: --add_track
- id: outdir
  doc: output directory to write hub to
  type: string
  inputBinding:
    prefix: --outdir
- id: no_repeats
  doc: Disable repeat track generation from softmasked genome sequence (saves time)
  type: boolean
  inputBinding:
    prefix: --no_repeats
- id: sam_tools_path
  doc: Path to samtools executable
  type: string
  inputBinding:
    prefix: --SAMTOOLS_PATH
- id: bam2wig_path
  doc: Path to bam2wig executable
  type: string
  inputBinding:
    prefix: --BAM2WIG_PATH
- id: hints
  doc: GFF file with AUGUSTUS hints
  type: string
  inputBinding:
    prefix: --hints
- id: train_genes
  doc: GTF file with training genes
  type: string
  inputBinding:
    prefix: --traingenes
- id: genemark
  doc: GTF file with GeneMark predictions
  type: string
  inputBinding:
    prefix: --genemark
- id: aug_ab_initio
  doc: GTF file with ab initio AUGUSTUS predictions
  type: string
  inputBinding:
    prefix: --aug_ab_initio
- id: aug_hints
  doc: GTF file with AUGUSTUS predictions with hints
  type: string
  inputBinding:
    prefix: --aug_hints
- id: aug_ab_initio_utr
  doc: GTF file with ab initio AUGUSTUS predictions with UTRs
  type: string
  inputBinding:
    prefix: --aug_ab_initio_utr
- id: aug_hints_utr
  doc: GTF file with AUGUSTUS predictions with hints with UTRs
  type: string
  inputBinding:
    prefix: --aug_hints_utr
- id: latin_name
  doc: Latin species name, e.g. "Drosophila melanogaster". This argument must be provided
    if the hub is supposed to be added to the public UCSC list.
  type: string
  inputBinding:
    prefix: --latin_name
- id: assembly_version
  doc: Assembly version, e.g. "BDGP R4/dm3". This argument must be provided if the
    hub is supposed to be added to the public UCSC list.
  type: string
  inputBinding:
    prefix: --assembly_version
- id: no_tmp_rm
  doc: Do not delete temporary files
  type: boolean
  inputBinding:
    prefix: --no_tmp_rm
- id: no_gene_pred_to_big_gene_pred
  doc: Option for the special case in which the precompiled UCSC binaries are not
    working on your system, and you installed kentutils from the older ENCODE github
    repository; if activated, gene prediction tracks will be output to bigBed instead
    of bigGenePred format and amino acid display will not be possible in gene tracks.
  type: boolean
  inputBinding:
    prefix: --no_genePredToBigGenePred
- id: verbosity
  doc: If INT>0 verbose output log is produced
  type: string
  inputBinding:
    prefix: --verbosity
outputs: []
cwlVersion: v1.1
baseCommand:
- make_hub.py
