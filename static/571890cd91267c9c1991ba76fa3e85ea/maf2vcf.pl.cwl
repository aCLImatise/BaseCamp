class: CommandLineTool
id: maf2vcf.pl.cwl
inputs:
- id: in_input_maf
  doc: Path to input file in MAF format
  type: boolean
  inputBinding:
    prefix: --input-maf
- id: in_output_dir
  doc: Path to output directory where VCFs will be stored, one per TN-pair
  type: File
  inputBinding:
    prefix: --output-dir
- id: in_output_vcf
  doc: Path to output multi-sample VCF containing all TN-pairs [<output-dir>/<input-maf-name>.vcf]
  type: boolean
  inputBinding:
    prefix: --output-vcf
- id: in_ref_fast_a
  doc: Path to reference Fasta file [~/.vep/homo_sapiens/91_GRCh37/Homo_sapiens.GRCh37.75.dna.primary_assembly.fa.gz]
  type: boolean
  inputBinding:
    prefix: --ref-fasta
- id: in_per_tn_v_cfs
  doc: Specify this to generate VCFs per-TN pair, in addition to the multi-sample
    VCF
  type: boolean
  inputBinding:
    prefix: --per-tn-vcfs
- id: in_tum_depth_col
  doc: Name of MAF column for read depth in tumor BAM [t_depth]
  type: boolean
  inputBinding:
    prefix: --tum-depth-col
- id: in_tum_rad_col
  doc: Name of MAF column for reference allele depth in tumor BAM [t_ref_count]
  type: boolean
  inputBinding:
    prefix: --tum-rad-col
- id: in_tum_vad_col
  doc: Name of MAF column for variant allele depth in tumor BAM [t_alt_count]
  type: boolean
  inputBinding:
    prefix: --tum-vad-col
- id: in_nrm_depth_col
  doc: Name of MAF column for read depth in normal BAM [n_depth]
  type: boolean
  inputBinding:
    prefix: --nrm-depth-col
- id: in_nrm_rad_col
  doc: Name of MAF column for reference allele depth in normal BAM [n_ref_count]
  type: boolean
  inputBinding:
    prefix: --nrm-rad-col
- id: in_nrm_vad_col
  doc: Name of MAF column for variant allele depth in normal BAM [n_alt_count]
  type: boolean
  inputBinding:
    prefix: --nrm-vad-col
- id: in_man
  doc: Print the detailed manual
  type: boolean
  inputBinding:
    prefix: --man
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: Path to output directory where VCFs will be stored, one per TN-pair
  type: File
  outputBinding:
    glob: $(inputs.in_output_dir)
cwlVersion: v1.1
baseCommand:
- maf2vcf.pl
