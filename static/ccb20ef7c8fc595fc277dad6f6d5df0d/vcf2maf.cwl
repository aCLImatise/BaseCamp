class: CommandLineTool
id: vcf2maf.pl.cwl
inputs:
- id: perl
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: vcf2mafpl
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: input_vcf
  doc: Path to input file in VCF format
  type: boolean
  inputBinding:
    prefix: --input-vcf
- id: output_maf
  doc: Path to output MAF file
  type: boolean
  inputBinding:
    prefix: --output-maf
- id: tmp_dir
  doc: 'Folder to retain intermediate VCFs after runtime [Default: Folder containing
    input VCF]'
  type: boolean
  inputBinding:
    prefix: --tmp-dir
- id: tumor_id
  doc: Tumor_Sample_Barcode to report in the MAF [TUMOR]
  type: boolean
  inputBinding:
    prefix: --tumor-id
- id: normal_id
  doc: Matched_Norm_Sample_Barcode to report in the MAF [NORMAL]
  type: boolean
  inputBinding:
    prefix: --normal-id
- id: vcf_tumor_id
  doc: Tumor sample ID used in VCF's genotype columns [--tumor-id]
  type: boolean
  inputBinding:
    prefix: --vcf-tumor-id
- id: vcf_normal_id
  doc: Matched normal ID used in VCF's genotype columns [--normal-id]
  type: boolean
  inputBinding:
    prefix: --vcf-normal-id
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
- id: inhibit_vep
  doc: Skip running VEP, but extract VEP annotation in VCF if found
  type: boolean
  inputBinding:
    prefix: --inhibit-vep
- id: online
  doc: Use useastdb.ensembl.org instead of local cache (supports only GRCh38 VCFs
    listing <100 events)
  type: boolean
  inputBinding:
    prefix: --online
- id: ref_fast_a
  doc: Reference FASTA file [~/.vep/homo_sapiens/95_GRCh37/Homo_sapiens.GRCh37.75.dna.primary_assembly.fa.gz]
  type: boolean
  inputBinding:
    prefix: --ref-fasta
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
  doc: NCBI reference assembly of variants MAF (e.g. GRCm38 for mouse) [GRCh37]
  type: boolean
  inputBinding:
    prefix: --ncbi-build
- id: cache_version
  doc: 'Version of offline cache to use with VEP (e.g. 75, 84, 91) [Default: Installed
    version]'
  type: boolean
  inputBinding:
    prefix: --cache-version
- id: maf_center
  doc: Variant calling center to report in MAF [.]
  type: boolean
  inputBinding:
    prefix: --maf-center
- id: retain_info
  doc: Comma-delimited names of INFO fields to retain as extra columns in MAF []
  type: boolean
  inputBinding:
    prefix: --retain-info
- id: retain_fmt
  doc: Comma-delimited names of FORMAT fields to retain as extra columns in MAF []
  type: boolean
  inputBinding:
    prefix: --retain-fmt
- id: min_hom_vaf
  doc: If GT undefined in VCF, minimum allele fraction to call a variant homozygous
    [0.7]
  type: boolean
  inputBinding:
    prefix: --min-hom-vaf
- id: remap_chain
  doc: Chain file to remap variants to a different assembly before running VEP
  type: boolean
  inputBinding:
    prefix: --remap-chain
- id: man
  doc: Print the detailed manual
  type: boolean
  inputBinding:
    prefix: --man
outputs: []
cwlVersion: v1.1
baseCommand:
- vcf2maf.pl
