version 1.0

task Vcf2mafpl {
  input {
    Boolean? input_vcf
    File? output_maf
    Boolean? tmp_dir
    Boolean? tumor_id
    Boolean? normal_id
    Boolean? vcf_tumor_id
    Boolean? vcf_normal_id
    Boolean? custom_enst
    Boolean? vep_path
    Boolean? vep_data
    Boolean? vep_forks
    Boolean? vep_custom
    Boolean? vep_config
    Boolean? vep_overwrite
    Boolean? buffer_size
    Boolean? any_allele
    Boolean? inhibit_vep
    Boolean? online
    Boolean? ref_fast_a
    Boolean? max_sub_pop_af
    Boolean? species
    Boolean? ncbi_build
    Boolean? cache_version
    Boolean? maf_center
    Boolean? retain_info
    Boolean? retain_fmt
    Boolean? retain_ann
    Boolean? min_hom_vaf
    Boolean? remap_chain
    Boolean? verbose
    Boolean? man
  }
  command <<<
    vcf2maf_pl \
      ~{if (input_vcf) then "--input-vcf" else ""} \
      ~{if (output_maf) then "--output-maf" else ""} \
      ~{if (tmp_dir) then "--tmp-dir" else ""} \
      ~{if (tumor_id) then "--tumor-id" else ""} \
      ~{if (normal_id) then "--normal-id" else ""} \
      ~{if (vcf_tumor_id) then "--vcf-tumor-id" else ""} \
      ~{if (vcf_normal_id) then "--vcf-normal-id" else ""} \
      ~{if (custom_enst) then "--custom-enst" else ""} \
      ~{if (vep_path) then "--vep-path" else ""} \
      ~{if (vep_data) then "--vep-data" else ""} \
      ~{if (vep_forks) then "--vep-forks" else ""} \
      ~{if (vep_custom) then "--vep-custom" else ""} \
      ~{if (vep_config) then "--vep-config" else ""} \
      ~{if (vep_overwrite) then "--vep-overwrite" else ""} \
      ~{if (buffer_size) then "--buffer-size" else ""} \
      ~{if (any_allele) then "--any-allele" else ""} \
      ~{if (inhibit_vep) then "--inhibit-vep" else ""} \
      ~{if (online) then "--online" else ""} \
      ~{if (ref_fast_a) then "--ref-fasta" else ""} \
      ~{if (max_sub_pop_af) then "--max-subpop-af" else ""} \
      ~{if (species) then "--species" else ""} \
      ~{if (ncbi_build) then "--ncbi-build" else ""} \
      ~{if (cache_version) then "--cache-version" else ""} \
      ~{if (maf_center) then "--maf-center" else ""} \
      ~{if (retain_info) then "--retain-info" else ""} \
      ~{if (retain_fmt) then "--retain-fmt" else ""} \
      ~{if (retain_ann) then "--retain-ann" else ""} \
      ~{if (min_hom_vaf) then "--min-hom-vaf" else ""} \
      ~{if (remap_chain) then "--remap-chain" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (man) then "--man" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/vcf2maf:1.6.21--hdfd78af_0"
  }
  parameter_meta {
    input_vcf: "Path to input file in VCF format"
    output_maf: "Path to output MAF file"
    tmp_dir: "Folder to retain intermediate VCFs after runtime [Default: Folder containing input VCF]"
    tumor_id: "Tumor_Sample_Barcode to report in the MAF [TUMOR]"
    normal_id: "Matched_Norm_Sample_Barcode to report in the MAF [NORMAL]"
    vcf_tumor_id: "Tumor sample ID used in VCF's genotype columns [--tumor-id]"
    vcf_normal_id: "Matched normal ID used in VCF's genotype columns [--normal-id]"
    custom_enst: "List of custom ENST IDs that override canonical selection"
    vep_path: "Folder containing the vep script [~/miniconda3/bin]"
    vep_data: "VEP's base cache/plugin directory [~/.vep]"
    vep_forks: "Number of forked processes to use when running VEP [4]"
    vep_custom: "String to pass into VEP's --custom option []"
    vep_config: "Config file to pass into VEP's --config option []"
    vep_overwrite: "Allow VEP to overwrite output VCF if it exists"
    buffer_size: "Number of variants VEP loads at a time; Reduce this for low memory systems [5000]"
    any_allele: "When reporting co-located variants, allow mismatched variant alleles too"
    inhibit_vep: "Skip running VEP, but extract VEP annotation in VCF if found"
    online: "Use useastdb.ensembl.org instead of local cache (supports only GRCh38 VCFs listing <100 events)"
    ref_fast_a: "Reference FASTA file [~/.vep/homo_sapiens/102_GRCh37/Homo_sapiens.GRCh37.dna.toplevel.fa.gz]"
    max_sub_pop_af: "Add FILTER tag common_variant if gnomAD reports any subpopulation AFs greater than this [0.0004]"
    species: "Ensembl-friendly name of species (e.g. mus_musculus for mouse) [homo_sapiens]"
    ncbi_build: "NCBI reference assembly of variants MAF (e.g. GRCm38 for mouse) [GRCh37]"
    cache_version: "Version of offline cache to use with VEP (e.g. 75, 91, 102) [Default: Installed version]"
    maf_center: "Variant calling center to report in MAF [.]"
    retain_info: "Comma-delimited names of INFO fields to retain as extra columns in MAF []"
    retain_fmt: "Comma-delimited names of FORMAT fields to retain as extra columns in MAF []"
    retain_ann: "Comma-delimited names of annotations (within the VEP CSQ/ANN) to retain as extra columns in MAF []"
    min_hom_vaf: "If GT undefined in VCF, minimum allele fraction to call a variant homozygous [0.7]"
    remap_chain: "Chain file to remap variants to a different assembly before running VEP"
    verbose: "Print more things to log progress"
    man: "Print the detailed manual"
  }
  output {
    File out_stdout = stdout()
    File out_output_maf = "${in_output_maf}"
  }
}