class: CommandLineTool
id: maf2vcf.pl.cwl
inputs:
- id: perl
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: maf2vcfpl
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: input_maf
  doc: Path to input file in MAF format
  type: boolean
  inputBinding:
    prefix: --input-maf
- id: output_dir
  doc: Path to output directory where VCFs will be stored, one per TN-pair
  type: boolean
  inputBinding:
    prefix: --output-dir
- id: output_vcf
  doc: Path to output multi-sample VCF containing all TN-pairs [<output-dir>/<input-maf-name>.vcf]
  type: boolean
  inputBinding:
    prefix: --output-vcf
- id: ref_fast_a
  doc: Path to reference Fasta file [~/.vep/homo_sapiens/91_GRCh37/Homo_sapiens.GRCh37.75.dna.primary_assembly.fa.gz]
  type: boolean
  inputBinding:
    prefix: --ref-fasta
- id: per_tn_v_cfs
  doc: Specify this to generate VCFs per-TN pair, in addition to the multi-sample
    VCF
  type: boolean
  inputBinding:
    prefix: --per-tn-vcfs
- id: tum_depth_col
  doc: Name of MAF column for read depth in tumor BAM [t_depth]
  type: boolean
  inputBinding:
    prefix: --tum-depth-col
- id: tum_rad_col
  doc: Name of MAF column for reference allele depth in tumor BAM [t_ref_count]
  type: boolean
  inputBinding:
    prefix: --tum-rad-col
- id: tum_vad_col
  doc: Name of MAF column for variant allele depth in tumor BAM [t_alt_count]
  type: boolean
  inputBinding:
    prefix: --tum-vad-col
- id: nrm_depth_col
  doc: Name of MAF column for read depth in normal BAM [n_depth]
  type: boolean
  inputBinding:
    prefix: --nrm-depth-col
- id: nrm_rad_col
  doc: Name of MAF column for reference allele depth in normal BAM [n_ref_count]
  type: boolean
  inputBinding:
    prefix: --nrm-rad-col
- id: nrm_vad_col
  doc: Name of MAF column for variant allele depth in normal BAM [n_alt_count]
  type: boolean
  inputBinding:
    prefix: --nrm-vad-col
- id: man
  doc: Print the detailed manual
  type: boolean
  inputBinding:
    prefix: --man
outputs: []
cwlVersion: v1.1
baseCommand:
- maf2vcf.pl
