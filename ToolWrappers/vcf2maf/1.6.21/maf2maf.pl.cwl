class: CommandLineTool
id: maf2maf.pl.cwl
inputs:
- id: in_input_maf
  doc: Path to input file in MAF format
  type: boolean?
  inputBinding:
    prefix: --input-maf
- id: in_output_maf
  doc: 'Path to output MAF file [Default: STDOUT]'
  type: File?
  inputBinding:
    prefix: --output-maf
- id: in_tmp_dir
  doc: 'Folder to retain intermediate VCFs/MAFs after runtime [Default: usually /tmp]'
  type: boolean?
  inputBinding:
    prefix: --tmp-dir
- id: in_tum_depth_col
  doc: Name of MAF column for read depth in tumor BAM [t_depth]
  type: boolean?
  inputBinding:
    prefix: --tum-depth-col
- id: in_tum_rad_col
  doc: Name of MAF column for reference allele depth in tumor BAM [t_ref_count]
  type: boolean?
  inputBinding:
    prefix: --tum-rad-col
- id: in_tum_vad_col
  doc: Name of MAF column for variant allele depth in tumor BAM [t_alt_count]
  type: boolean?
  inputBinding:
    prefix: --tum-vad-col
- id: in_nrm_depth_col
  doc: Name of MAF column for read depth in normal BAM [n_depth]
  type: boolean?
  inputBinding:
    prefix: --nrm-depth-col
- id: in_nrm_rad_col
  doc: Name of MAF column for reference allele depth in normal BAM [n_ref_count]
  type: boolean?
  inputBinding:
    prefix: --nrm-rad-col
- id: in_nrm_vad_col
  doc: Name of MAF column for variant allele depth in normal BAM [n_alt_count]
  type: boolean?
  inputBinding:
    prefix: --nrm-vad-col
- id: in_retain_cols
  doc: Comma-delimited list of columns to retain from the input MAF [Center,Verification_Status,Validation_Status,Mutation_Status,Sequencing_Phase,Sequence_Source,Validation_Method,Score,BAM_file,Sequencer,Tumor_Sample_UUID,Matched_Norm_Sample_UUID]
  type: boolean?
  inputBinding:
    prefix: --retain-cols
- id: in_custom_enst
  doc: List of custom ENST IDs that override canonical selection
  type: boolean?
  inputBinding:
    prefix: --custom-enst
- id: in_vep_path
  doc: Folder containing the vep script [~/miniconda3/bin]
  type: boolean?
  inputBinding:
    prefix: --vep-path
- id: in_vep_data
  doc: VEP's base cache/plugin directory [~/.vep]
  type: boolean?
  inputBinding:
    prefix: --vep-data
- id: in_vep_forks
  doc: Number of forked processes to use when running VEP [4]
  type: boolean?
  inputBinding:
    prefix: --vep-forks
- id: in_buffer_size
  doc: Number of variants VEP loads at a time; Reduce this for low memory systems
    [5000]
  type: boolean?
  inputBinding:
    prefix: --buffer-size
- id: in_any_allele
  doc: When reporting co-located variants, allow mismatched variant alleles too
  type: boolean?
  inputBinding:
    prefix: --any-allele
- id: in_max_sub_pop_af
  doc: Add FILTER tag common_variant if gnomAD reports any subpopulation AFs greater
    than this [0.0004]
  type: boolean?
  inputBinding:
    prefix: --max-subpop-af
- id: in_species
  doc: Ensembl-friendly name of species (e.g. mus_musculus for mouse) [homo_sapiens]
  type: boolean?
  inputBinding:
    prefix: --species
- id: in_ncbi_build
  doc: NCBI reference assembly of variants in MAF (e.g. GRCm38 for mouse) [GRCh37]
  type: boolean?
  inputBinding:
    prefix: --ncbi-build
- id: in_cache_version
  doc: 'Version of offline cache to use with VEP (e.g. 75, 84, 91) [Default: Installed
    version]'
  type: boolean?
  inputBinding:
    prefix: --cache-version
- id: in_ref_fast_a
  doc: Reference FASTA file [~/.vep/homo_sapiens/102_GRCh37/Homo_sapiens.GRCh37.dna.toplevel.fa.gz]
  type: boolean?
  inputBinding:
    prefix: --ref-fasta
- id: in_man
  doc: Print the detailed manual
  type: boolean?
  inputBinding:
    prefix: --man
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_maf
  doc: 'Path to output MAF file [Default: STDOUT]'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_maf)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/vcf2maf:1.6.21--hdfd78af_0
cwlVersion: v1.1
baseCommand:
- maf2maf.pl
