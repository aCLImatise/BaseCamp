version 1.0

task Maf2maf.pl {
  input {
    Boolean? input_maf
    Boolean? output_maf
    Boolean? tmp_dir
    Boolean? tum_depth_col
    Boolean? tum_rad_col
    Boolean? tum_vad_col
    Boolean? nrm_depth_col
    Boolean? nrm_rad_col
    Boolean? nrm_vad_col
    Boolean? retain_cols
    Boolean? custom_enst
    Boolean? vep_path
    Boolean? vep_data
    Boolean? vep_forks
    Boolean? buffer_size
    Boolean? any_allele
    Boolean? filter_vcf
    Boolean? max_filter_ac
    Boolean? species
    Boolean? ncbi_build
    Boolean? cache_version
    Boolean? ref_fast_a
    Boolean? man
  }
  command <<<
    maf2maf.pl \
      ~{true="--input-maf" false="" input_maf} \
      ~{true="--output-maf" false="" output_maf} \
      ~{true="--tmp-dir" false="" tmp_dir} \
      ~{true="--tum-depth-col" false="" tum_depth_col} \
      ~{true="--tum-rad-col" false="" tum_rad_col} \
      ~{true="--tum-vad-col" false="" tum_vad_col} \
      ~{true="--nrm-depth-col" false="" nrm_depth_col} \
      ~{true="--nrm-rad-col" false="" nrm_rad_col} \
      ~{true="--nrm-vad-col" false="" nrm_vad_col} \
      ~{true="--retain-cols" false="" retain_cols} \
      ~{true="--custom-enst" false="" custom_enst} \
      ~{true="--vep-path" false="" vep_path} \
      ~{true="--vep-data" false="" vep_data} \
      ~{true="--vep-forks" false="" vep_forks} \
      ~{true="--buffer-size" false="" buffer_size} \
      ~{true="--any-allele" false="" any_allele} \
      ~{true="--filter-vcf" false="" filter_vcf} \
      ~{true="--max-filter-ac" false="" max_filter_ac} \
      ~{true="--species" false="" species} \
      ~{true="--ncbi-build" false="" ncbi_build} \
      ~{true="--cache-version" false="" cache_version} \
      ~{true="--ref-fasta" false="" ref_fast_a} \
      ~{true="--man" false="" man}
  >>>
  parameter_meta {
    input_maf: "Path to input file in MAF format"
    output_maf: "Path to output MAF file [Default: STDOUT]"
    tmp_dir: "Folder to retain intermediate VCFs/MAFs after runtime [Default: usually /tmp]"
    tum_depth_col: "Name of MAF column for read depth in tumor BAM [t_depth]"
    tum_rad_col: "Name of MAF column for reference allele depth in tumor BAM [t_ref_count]"
    tum_vad_col: "Name of MAF column for variant allele depth in tumor BAM [t_alt_count]"
    nrm_depth_col: "Name of MAF column for read depth in normal BAM [n_depth]"
    nrm_rad_col: "Name of MAF column for reference allele depth in normal BAM [n_ref_count]"
    nrm_vad_col: "Name of MAF column for variant allele depth in normal BAM [n_alt_count]"
    retain_cols: "Comma-delimited list of columns to retain from the input MAF [Center,Verification_Status,Validation_Status,Mutation_Status,Sequencing_Phase,Sequence_Source,Validation_Method,Score,BAM_file,Sequencer,Tumor_Sample_UUID,Matched_Norm_Sample_UUID]"
    custom_enst: "List of custom ENST IDs that override canonical selection"
    vep_path: "Folder containing the vep script [~/vep]"
    vep_data: "VEP's base cache/plugin directory [~/.vep]"
    vep_forks: "Number of forked processes to use when running VEP [4]"
    buffer_size: "Number of variants VEP loads at a time; Reduce this for low memory systems [5000]"
    any_allele: "When reporting co-located variants, allow mismatched variant alleles too"
    filter_vcf: "A VCF for FILTER tag common_variant. Set to 0 to disable [~/.vep/ExAC_nonTCGA.r0.3.1.sites.vep.vcf.gz]"
    max_filter_ac: "Use tag common_variant if the filter-vcf reports a subpopulation AC higher than this [10]"
    species: "Ensembl-friendly name of species (e.g. mus_musculus for mouse) [homo_sapiens]"
    ncbi_build: "NCBI reference assembly of variants in MAF (e.g. GRCm38 for mouse) [GRCh37]"
    cache_version: "Version of offline cache to use with VEP (e.g. 75, 84, 91) [Default: Installed version]"
    ref_fast_a: "Reference FASTA file [~/.vep/homo_sapiens/91_GRCh37/Homo_sapiens.GRCh37.75.dna.primary_assembly.fa.gz]"
    man: "Print the detailed manual"
  }
}