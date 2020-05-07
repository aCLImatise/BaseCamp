class: CommandLineTool
id: ctat_mutations.cwl
inputs:
- id: left
  doc: Path to one of the two paired RNAseq samples (left)
  type: string
  inputBinding:
    prefix: --left
- id: right
  doc: Path to one of the two paired RNAseq samples (right)
  type: string
  inputBinding:
    prefix: --right
- id: out_dir
  doc: output directory
  type: string
  inputBinding:
    prefix: --out_dir
- id: reference
  doc: Path to the reference genome to use in the analysis pipeline.
  type: string
  inputBinding:
    prefix: --reference
- id: index
  doc: The initial index is made only from the reference genome and can be shared.
    If premade, supply a path here to the index directory so that it is not rebuilt
    for every alignment. Please provide the full path.
  type: string
  inputBinding:
    prefix: --index
- id: dbsnp_vcf
  doc: dbsnp vcf file for the reference genome.
  type: string
  inputBinding:
    prefix: --dbsnp_vcf
- id: threads
  doc: The number of threads to use for multi-threaded steps.
  type: string
  inputBinding:
    prefix: --threads
- id: variant_filtering_mode
  doc: Specifies the variant filtering method.
  type: string
  inputBinding:
    prefix: --variant_filtering_mode
- id: variant_call_mode
  doc: Specifies the variant calling method to use.
  type: string
  inputBinding:
    prefix: --variant_call_mode
- id: ref_bed
  doc: BED file Bed file for reference genome, required only if making the mutation
    inspector json. If given the json file will be made. Please make sure the bed
    file is indexed and that bed.idx file is in the same folder with the same file
    basename as the related bed file.
  type: string
  inputBinding:
    prefix: --ref_bed
- id: plot
  doc: Turns off plotting recalibration of alignments.
  type: boolean
  inputBinding:
    prefix: --plot
- id: cosmic_vcf_gz
  doc: Coding Cosmic Mutation VCF annotated with Phenotype Information and zipped
    using bgzip.
  type: string
  inputBinding:
    prefix: --cosmic_vcf_gz
- id: no_filter_rna_editing
  doc: if enabled, turns off filtering based on known rna- editing sites from radar
    and rediportal
  type: boolean
  inputBinding:
    prefix: --no_filter_rna_editing
- id: tissue_type
  doc: Tissue type (used in CRAVAT variant prioritation). Supported classifiers can
    be found at http://www.cravat.us/help.jsp)
  type: string
  inputBinding:
    prefix: --tissue_type
- id: email
  doc: Email used to notify of errors associated with cravat.
  type: string
  inputBinding:
    prefix: --email
- id: wdl_compatible_run
  doc: Cromwell/WDL requires execution to happen relative to an output directory of
    dynaically created without giving the directory path to the underlying tools/pipelines.
    This requires a pipeline to use relative paths which can be dangerous outside
    of Cromwell/WDL. This will ignore any output directory specified in the command
    line and force the output to be relative paths. DO NOT USE outside of Cromwell/WDL.
  type: boolean
  inputBinding:
    prefix: --wdl_compatible_run
- id: cravat_annotation_header
  doc: Headers for each CRAVAT feature annotated to the VCF file (used in BCFtools).
  type: string
  inputBinding:
    prefix: --cravat_annotation_header
- id: bam
  doc: Sample file in the form of a bam, if this is given NO alignment will be performed;
    the alignment mode command line will be ignored; let and right sample files will
    be ignored. Normal pipeline processing will pick up directly after alignment in
    the pipeline with the supplied bam.
  type: string
  inputBinding:
    prefix: --bam
- id: alignment_mode
  doc: Specifies the alignment and indexing algorithm to use.
  type: string
  inputBinding:
    prefix: --alignment_mode
- id: base_depth
  doc: Calculates the base coverage per base.
  type: boolean
  inputBinding:
    prefix: --base_depth
- id: star_memory
  doc: Memory limit for star index. This should be used to increase memory if needed.
    Reducing memory consumption should be performed with the STAR Limited mod.
  type: string
  inputBinding:
    prefix: --star_memory
- id: debug
  doc: sets debug mode for logger
  type: boolean
  inputBinding:
    prefix: --debug
- id: genome_lib_dir
  doc: genome lib directory - see http://FusionFilter.github.io for details. Uses
    env var CTAT_GENOME_LIB as default
  type: string
  inputBinding:
    prefix: --genome_lib_dir
- id: skip_cravat
  doc: Skips CRAVAT services.
  type: boolean
  inputBinding:
    prefix: --skip_cravat
outputs: []
cwlVersion: v1.1
baseCommand:
- ctat_mutations
