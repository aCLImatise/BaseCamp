class: CommandLineTool
id: make_hub.py.cwl
inputs:
- id: in_print_usage_examples
  doc: Print usage examples for make_hub.py
  type: boolean
  inputBinding:
    prefix: --printUsageExamples
- id: in_email
  doc: Contact e-mail adress for assembly hub
  type: string
  inputBinding:
    prefix: --email
- id: in_genome
  doc: Genome fasta file (possibly softmasked)
  type: File
  inputBinding:
    prefix: --genome
- id: in_long_label
  doc: "Long label for hub, e.g. species name in english and\nlatin, pass in single\
    \ quotation marks, e.g.\n--long_label 'Dorosphila melanogster (fruit fly)'"
  type: string
  inputBinding:
    prefix: --long_label
- id: in_short_label
  doc: "Short label for hub, will also be used as directory\nname for hub, should\
    \ not contain spaces or special\ncharacters, e.g. --short_label fly"
  type: Directory
  inputBinding:
    prefix: --short_label
- id: in_bam
  doc: "BAM file(s) - space separated - with RNA-Seq\ninformation, by default will\
    \ be displayed as bigWig"
  type: string[]
  inputBinding:
    prefix: --bam
- id: in_cores
  doc: Number of cores for samtools sort processes
  type: long
  inputBinding:
    prefix: --cores
- id: in_display_bam_as_bam
  doc: Display BAM file(s) as bam tracks
  type: boolean
  inputBinding:
    prefix: --display_bam_as_bam
- id: in_gem_oma_filtered_predictions
  doc: GFF3 output file of Gemoma
  type: File
  inputBinding:
    prefix: --gemoma_filtered_predictions
- id: in_braker_out_dir
  doc: BRAKER output directory with GTF files
  type: Directory
  inputBinding:
    prefix: --braker_out_dir
- id: in_maker_gff
  doc: MAKER2 output file in GFF3 format
  type: File
  inputBinding:
    prefix: --maker_gff
- id: in_glimmer_gff
  doc: GFF3 output file of GlimmerHMM
  type: File
  inputBinding:
    prefix: --glimmer_gff
- id: in_snap_gff
  doc: SNAP output file in GFF3 format
  type: File
  inputBinding:
    prefix: --snap_gff
- id: in_an_not
  doc: GTF file with reference annotation
  type: File
  inputBinding:
    prefix: --annot
- id: in_gene_track
  doc: "Gene track with user specified label, argument must be\nformatted as follows:\
    \ --gene_track file.gtf tracklabel"
  type: string[]
  inputBinding:
    prefix: --gene_track
- id: in_add_track
  doc: Add track(s) to existing hub
  type: boolean
  inputBinding:
    prefix: --add_track
- id: in_outdir
  doc: output directory to write hub to
  type: Directory
  inputBinding:
    prefix: --outdir
- id: in_no_repeats
  doc: "Disable repeat track generation from softmasked genome\nsequence (saves time)"
  type: boolean
  inputBinding:
    prefix: --no_repeats
- id: in_sam_tools_path
  doc: Path to samtools executable
  type: File
  inputBinding:
    prefix: --SAMTOOLS_PATH
- id: in_bam_two_wig_path
  doc: Path to bam2wig executable
  type: long
  inputBinding:
    prefix: --BAM2WIG_PATH
- id: in_hints
  doc: GFF file with AUGUSTUS hints
  type: File
  inputBinding:
    prefix: --hints
- id: in_train_genes
  doc: GTF file with training genes
  type: File
  inputBinding:
    prefix: --traingenes
- id: in_genemark
  doc: GTF file with GeneMark predictions
  type: File
  inputBinding:
    prefix: --genemark
- id: in_aug_ab_initio
  doc: GTF file with ab initio AUGUSTUS predictions
  type: File
  inputBinding:
    prefix: --aug_ab_initio
- id: in_aug_hints
  doc: GTF file with AUGUSTUS predictions with hints
  type: File
  inputBinding:
    prefix: --aug_hints
- id: in_aug_ab_initio_utr
  doc: GTF file with ab initio AUGUSTUS predictions with UTRs
  type: File
  inputBinding:
    prefix: --aug_ab_initio_utr
- id: in_aug_hints_utr
  doc: "GTF file with AUGUSTUS predictions with hints with\nUTRs"
  type: File
  inputBinding:
    prefix: --aug_hints_utr
- id: in_latin_name
  doc: "Latin species name, e.g. \"Drosophila melanogaster\".\nThis argument must\
    \ be provided if the hub is supposed\nto be added to the public UCSC list."
  type: string
  inputBinding:
    prefix: --latin_name
- id: in_assembly_version
  doc: "Assembly version, e.g. \"BDGP R4/dm3\". This argument\nmust be provided if\
    \ the hub is supposed to be added to\nthe public UCSC list."
  type: long
  inputBinding:
    prefix: --assembly_version
- id: in_no_tmp_rm
  doc: Do not delete temporary files
  type: boolean
  inputBinding:
    prefix: --no_tmp_rm
- id: in_no_gene_pred_to_big_gene_pred
  doc: "Option for the special case in which the precompiled\nUCSC binaries are not\
    \ working on your system, and you\ninstalled kentutils from the older ENCODE github\n\
    repository; if activated, gene prediction tracks will\nbe output to bigBed instead\
    \ of bigGenePred format and\namino acid display will not be possible in gene\n\
    tracks."
  type: boolean
  inputBinding:
    prefix: --no_genePredToBigGenePred
- id: in_verbosity
  doc: "If INT>0 verbose output log is produced\n"
  type: long
  inputBinding:
    prefix: --verbosity
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_gem_oma_filtered_predictions
  doc: GFF3 output file of Gemoma
  type: File
  outputBinding:
    glob: $(inputs.in_gem_oma_filtered_predictions)
- id: out_braker_out_dir
  doc: BRAKER output directory with GTF files
  type: Directory
  outputBinding:
    glob: $(inputs.in_braker_out_dir)
- id: out_maker_gff
  doc: MAKER2 output file in GFF3 format
  type: File
  outputBinding:
    glob: $(inputs.in_maker_gff)
- id: out_glimmer_gff
  doc: GFF3 output file of GlimmerHMM
  type: File
  outputBinding:
    glob: $(inputs.in_glimmer_gff)
- id: out_snap_gff
  doc: SNAP output file in GFF3 format
  type: File
  outputBinding:
    glob: $(inputs.in_snap_gff)
- id: out_outdir
  doc: output directory to write hub to
  type: Directory
  outputBinding:
    glob: $(inputs.in_outdir)
cwlVersion: v1.1
baseCommand:
- make_hub.py
