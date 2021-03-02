class: CommandLineTool
id: ctat_mutations.cwl
inputs:
- id: in_left
  doc: Path to one of the two paired RNAseq samples (left)
  type: File?
  inputBinding:
    prefix: --left
- id: in_right
  doc: Path to one of the two paired RNAseq samples (right)
  type: File?
  inputBinding:
    prefix: --right
- id: in_out_dir
  doc: output directory
  type: Directory?
  inputBinding:
    prefix: --out_dir
- id: in_reference
  doc: "Path to the reference genome to use in the analysis\npipeline."
  type: File?
  inputBinding:
    prefix: --reference
- id: in_index
  doc: "The initial index is made only from the reference\ngenome and can be shared.\
    \ If premade, supply a path\nhere to the index directory so that it is not rebuilt\n\
    for every alignment. Please provide the full path."
  type: File?
  inputBinding:
    prefix: --index
- id: in_dbsnp_vcf
  doc: dbsnp vcf file for the reference genome.
  type: File?
  inputBinding:
    prefix: --dbsnp_vcf
- id: in_threads
  doc: The number of threads to use for multi-threaded steps.
  type: long?
  inputBinding:
    prefix: --threads
- id: in_variant_filtering_mode
  doc: Specifies the variant filtering method.
  type: string?
  inputBinding:
    prefix: --variant_filtering_mode
- id: in_variant_call_mode
  doc: Specifies the variant calling method to use.
  type: string?
  inputBinding:
    prefix: --variant_call_mode
- id: in_ref_bed
  doc: "BED file\nBed file for reference genome, required only if making\nthe mutation\
    \ inspector json. If given the json file\nwill be made. Please make sure the bed\
    \ file is indexed\nand that bed.idx file is in the same folder with the\nsame\
    \ file basename as the related bed file."
  type: File?
  inputBinding:
    prefix: --ref_bed
- id: in_plot
  doc: Turns off plotting recalibration of alignments.
  type: boolean?
  inputBinding:
    prefix: --plot
- id: in_cosmic_vcf_gz
  doc: "Coding Cosmic Mutation VCF annotated with Phenotype\nInformation and zipped\
    \ using bgzip."
  type: string?
  inputBinding:
    prefix: --cosmic_vcf_gz
- id: in_no_filter_rna_editing
  doc: "if enabled, turns off filtering based on known rna-\nediting sites from radar\
    \ and rediportal"
  type: boolean?
  inputBinding:
    prefix: --no_filter_rna_editing
- id: in_tissue_type
  doc: "Tissue type (used in CRAVAT variant prioritation).\nSupported classifiers\
    \ can be found at\nhttp://www.cravat.us/help.jsp)"
  type: string?
  inputBinding:
    prefix: --tissue_type
- id: in_email
  doc: Email used to notify of errors associated with cravat.
  type: string?
  inputBinding:
    prefix: --email
- id: in_wdl_compatible_run
  doc: "Cromwell/WDL requires execution to happen relative to\nan output directory\
    \ of dynaically created without\ngiving the directory path to the underlying\n\
    tools/pipelines. This requires a pipeline to use\nrelative paths which can be\
    \ dangerous outside of\nCromwell/WDL. This will ignore any output directory\n\
    specified in the command line and force the output to\nbe relative paths. DO NOT\
    \ USE outside of Cromwell/WDL."
  type: File?
  inputBinding:
    prefix: --wdl_compatible_run
- id: in_cravat_annotation_header
  doc: "Headers for each CRAVAT feature annotated to the VCF\nfile (used in BCFtools)."
  type: File?
  inputBinding:
    prefix: --cravat_annotation_header
- id: in_bam
  doc: "Sample file in the form of a bam, if this is given NO\nalignment will be performed;\
    \ the alignment mode\ncommand line will be ignored; let and right sample\nfiles\
    \ will be ignored. Normal pipeline processing will\npick up directly after alignment\
    \ in the pipeline with\nthe supplied bam."
  type: File?
  inputBinding:
    prefix: --bam
- id: in_alignment_mode
  doc: Specifies the alignment and indexing algorithm to use.
  type: string?
  inputBinding:
    prefix: --alignment_mode
- id: in_base_depth
  doc: Calculates the base coverage per base.
  type: boolean?
  inputBinding:
    prefix: --base_depth
- id: in_star_memory
  doc: "Memory limit for star index. This should be used to\nincrease memory if needed.\
    \ Reducing memory consumption\nshould be performed with the STAR Limited mod."
  type: string?
  inputBinding:
    prefix: --star_memory
- id: in_debug
  doc: sets debug mode for logger
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_genome_lib_dir
  doc: "genome lib directory - see\nhttp://FusionFilter.github.io for details. Uses\
    \ env\nvar CTAT_GENOME_LIB as default"
  type: Directory?
  inputBinding:
    prefix: --genome_lib_dir
- id: in_skip_cravat
  doc: Skips CRAVAT services.
  type: boolean?
  inputBinding:
    prefix: --skip_cravat
- id: in_realign
  doc: Turns off optional indel realignment step.
  type: boolean?
  inputBinding:
    prefix: --realign
- id: in_no_recalibrate_bam
  doc: "If used, turns off gatk recalibration of bam files\nbefore samtools variant\
    \ calling."
  type: boolean?
  inputBinding:
    prefix: --no_recalibrate_bam
- id: in_sequencing_platform
  doc: "Platform\nThe sequencing platform used to generate the samples\nchoices include\
    \ ILLUMINA SLX,SOLEXA SOLID,454 COMPLETE\nPACBIO IONTORRENT CAPILLARY ONT.\n"
  type: long?
  inputBinding:
    prefix: --sequencing_platform
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_dir
  doc: output directory
  type: Directory?
  outputBinding:
    glob: $(inputs.in_out_dir)
- id: out_wdl_compatible_run
  doc: "Cromwell/WDL requires execution to happen relative to\nan output directory\
    \ of dynaically created without\ngiving the directory path to the underlying\n\
    tools/pipelines. This requires a pipeline to use\nrelative paths which can be\
    \ dangerous outside of\nCromwell/WDL. This will ignore any output directory\n\
    specified in the command line and force the output to\nbe relative paths. DO NOT\
    \ USE outside of Cromwell/WDL."
  type: File?
  outputBinding:
    glob: $(inputs.in_wdl_compatible_run)
hints: []
cwlVersion: v1.1
baseCommand:
- ctat_mutations
