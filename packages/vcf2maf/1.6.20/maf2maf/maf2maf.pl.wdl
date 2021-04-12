version 1.0

task Maf2mafpl {
  input {
    Boolean? input_maf
    File? output_maf
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
    maf2maf_pl \
      ~{if (input_maf) then "--input-maf" else ""} \
      ~{if (output_maf) then "--output-maf" else ""} \
      ~{if (tmp_dir) then "--tmp-dir" else ""} \
      ~{if (tum_depth_col) then "--tum-depth-col" else ""} \
      ~{if (tum_rad_col) then "--tum-rad-col" else ""} \
      ~{if (tum_vad_col) then "--tum-vad-col" else ""} \
      ~{if (nrm_depth_col) then "--nrm-depth-col" else ""} \
      ~{if (nrm_rad_col) then "--nrm-rad-col" else ""} \
      ~{if (nrm_vad_col) then "--nrm-vad-col" else ""} \
      ~{if (retain_cols) then "--retain-cols" else ""} \
      ~{if (custom_enst) then "--custom-enst" else ""} \
      ~{if (vep_path) then "--vep-path" else ""} \
      ~{if (vep_data) then "--vep-data" else ""} \
      ~{if (vep_forks) then "--vep-forks" else ""} \
      ~{if (buffer_size) then "--buffer-size" else ""} \
      ~{if (any_allele) then "--any-allele" else ""} \
      ~{if (filter_vcf) then "--filter-vcf" else ""} \
      ~{if (max_filter_ac) then "--max-filter-ac" else ""} \
      ~{if (species) then "--species" else ""} \
      ~{if (ncbi_build) then "--ncbi-build" else ""} \
      ~{if (cache_version) then "--cache-version" else ""} \
      ~{if (ref_fast_a) then "--ref-fasta" else ""} \
      ~{if (man) then "--man" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/vcf2maf:1.6.20--hdfd78af_1"
  }
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
    vep_path: "Folder containing the vep script [~/miniconda3/bin]"
    vep_data: "VEP's base cache/plugin directory [~/.vep]"
    vep_forks: "Number of forked processes to use when running VEP [4]"
    buffer_size: "Number of variants VEP loads at a time; Reduce this for low memory systems [5000]"
    any_allele: "When reporting co-located variants, allow mismatched variant alleles too"
    filter_vcf: "A VCF for FILTER tag common_variant; Disabled by default []"
    max_filter_ac: "Use tag common_variant if the filter-vcf reports a subpopulation AC higher than this [10]"
    species: "Ensembl-friendly name of species (e.g. mus_musculus for mouse) [homo_sapiens]"
    ncbi_build: "NCBI reference assembly of variants in MAF (e.g. GRCm38 for mouse) [GRCh37]"
    cache_version: "Version of offline cache to use with VEP (e.g. 75, 84, 91) [Default: Installed version]"
    ref_fast_a: "Reference FASTA file [~/.vep/homo_sapiens/102_GRCh37/Homo_sapiens.GRCh37.dna.toplevel.fa.gz]"
    man: "Print the detailed manual"
  }
  output {
    File out_stdout = stdout()
    File out_output_maf = "${in_output_maf}"
  }
}