class: CommandLineTool
id: maf2maf.pl.cwl
inputs:
- id: perl
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: maf2mafpl
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: input_maf
  doc: Path to input file in MAF format
  type: boolean
  inputBinding:
    prefix: --input-maf
- id: output_maf
  doc: 'Path to output MAF file [Default: STDOUT]'
  type: boolean
  inputBinding:
    prefix: --output-maf
- id: tmp_dir
  doc: 'Folder to retain intermediate VCFs/MAFs after runtime [Default: usually /tmp]'
  type: boolean
  inputBinding:
    prefix: --tmp-dir
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
- id: retain_cols
  doc: Comma-delimited list of columns to retain from the input MAF [Center,Verification_Status,Validation_Status,Mutation_Status,Sequencing_Phase,Sequence_Source,Validation_Method,Score,BAM_file,Sequencer,Tumor_Sample_UUID,Matched_Norm_Sample_UUID]
  type: boolean
  inputBinding:
    prefix: --retain-cols
- id: custom_enst
  doc: List of custom ENST IDs that override canonical selection
  type: boolean
  inputBinding:
    prefix: --custom-enst
- id: vep_path
  doc: Folder containing the vep script [~/vep]
  type: boolean
  inputBinding:
    prefix: --vep-path
- id: vep_data
  doc: VEP's base cache/plugin directory [~/.vep]
  type: boolean
  inputBinding:
    prefix: --vep-data
- id: vep_forks
  doc: Number of forked processes to use when running VEP [4]
  type: boolean
  inputBinding:
    prefix: --vep-forks
- id: buffer_size
  doc: Number of variants VEP loads at a time; Reduce this for low memory systems
    [5000]
  type: boolean
  inputBinding:
    prefix: --buffer-size
- id: any_allele
  doc: When reporting co-located variants, allow mismatched variant alleles too
  type: boolean
  inputBinding:
    prefix: --any-allele
- id: filter_vcf
  doc: A VCF for FILTER tag common_variant. Set to 0 to disable [~/.vep/ExAC_nonTCGA.r0.3.1.sites.vep.vcf.gz]
  type: boolean
  inputBinding:
    prefix: --filter-vcf
- id: max_filter_ac
  doc: Use tag common_variant if the filter-vcf reports a subpopulation AC higher
    than this [10]
  type: boolean
  inputBinding:
    prefix: --max-filter-ac
- id: species
  doc: Ensembl-friendly name of species (e.g. mus_musculus for mouse) [homo_sapiens]
  type: boolean
  inputBinding:
    prefix: --species
- id: ncbi_build
  doc: NCBI reference assembly of variants in MAF (e.g. GRCm38 for mouse) [GRCh37]
  type: boolean
  inputBinding:
    prefix: --ncbi-build
- id: cache_version
  doc: 'Version of offline cache to use with VEP (e.g. 75, 84, 91) [Default: Installed
    version]'
  type: boolean
  inputBinding:
    prefix: --cache-version
- id: ref_fast_a
  doc: Reference FASTA file [~/.vep/homo_sapiens/91_GRCh37/Homo_sapiens.GRCh37.75.dna.primary_assembly.fa.gz]
  type: boolean
  inputBinding:
    prefix: --ref-fasta
- id: man
  doc: Print the detailed manual
  type: boolean
  inputBinding:
    prefix: --man
outputs: []
cwlVersion: v1.1
baseCommand:
- maf2maf.pl
