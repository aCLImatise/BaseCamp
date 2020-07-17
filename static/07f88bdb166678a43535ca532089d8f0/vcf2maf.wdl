version 1.0

task Vcf2maf.pl {
  input {
    Boolean? input_vcf
    Boolean? output_maf
    Boolean? tmp_dir
    Boolean? tumor_id
    Boolean? normal_id
    Boolean? vcf_tumor_id
    Boolean? vcf_normal_id
    Boolean? custom_enst
    Boolean? vep_path
    Boolean? vep_data
    Boolean? vep_forks
    Boolean? buffer_size
    Boolean? any_allele
    Boolean? inhibit_vep
    Boolean? online
    Boolean? ref_fast_a
    Boolean? filter_vcf
    Boolean? max_filter_ac
    Boolean? species
    Boolean? ncbi_build
    Boolean? cache_version
    Boolean? maf_center
    Boolean? retain_info
    Boolean? retain_fmt
    Boolean? min_hom_vaf
    Boolean? remap_chain
    Boolean? man
  }
  command <<<
    vcf2maf.pl \
      ~{true="--input-vcf" false="" input_vcf} \
      ~{true="--output-maf" false="" output_maf} \
      ~{true="--tmp-dir" false="" tmp_dir} \
      ~{true="--tumor-id" false="" tumor_id} \
      ~{true="--normal-id" false="" normal_id} \
      ~{true="--vcf-tumor-id" false="" vcf_tumor_id} \
      ~{true="--vcf-normal-id" false="" vcf_normal_id} \
      ~{true="--custom-enst" false="" custom_enst} \
      ~{true="--vep-path" false="" vep_path} \
      ~{true="--vep-data" false="" vep_data} \
      ~{true="--vep-forks" false="" vep_forks} \
      ~{true="--buffer-size" false="" buffer_size} \
      ~{true="--any-allele" false="" any_allele} \
      ~{true="--inhibit-vep" false="" inhibit_vep} \
      ~{true="--online" false="" online} \
      ~{true="--ref-fasta" false="" ref_fast_a} \
      ~{true="--filter-vcf" false="" filter_vcf} \
      ~{true="--max-filter-ac" false="" max_filter_ac} \
      ~{true="--species" false="" species} \
      ~{true="--ncbi-build" false="" ncbi_build} \
      ~{true="--cache-version" false="" cache_version} \
      ~{true="--maf-center" false="" maf_center} \
      ~{true="--retain-info" false="" retain_info} \
      ~{true="--retain-fmt" false="" retain_fmt} \
      ~{true="--min-hom-vaf" false="" min_hom_vaf} \
      ~{true="--remap-chain" false="" remap_chain} \
      ~{true="--man" false="" man}
  >>>
  parameter_meta {
    input_vcf: "Path to input file in VCF format"
    output_maf: "Path to output MAF file"
    tmp_dir: "Folder to retain intermediate VCFs after runtime [Default: Folder containing input VCF]"
    tumor_id: "Tumor_Sample_Barcode to report in the MAF [TUMOR]"
    normal_id: "Matched_Norm_Sample_Barcode to report in the MAF [NORMAL]"
    vcf_tumor_id: "Tumor sample ID used in VCF's genotype columns [--tumor-id]"
    vcf_normal_id: "Matched normal ID used in VCF's genotype columns [--normal-id]"
    custom_enst: "List of custom ENST IDs that override canonical selection"
    vep_path: "Folder containing the vep script [~/vep]"
    vep_data: "VEP's base cache/plugin directory [~/.vep]"
    vep_forks: "Number of forked processes to use when running VEP [4]"
    buffer_size: "Number of variants VEP loads at a time; Reduce this for low memory systems [5000]"
    any_allele: "When reporting co-located variants, allow mismatched variant alleles too"
    inhibit_vep: "Skip running VEP, but extract VEP annotation in VCF if found"
    online: "Use useastdb.ensembl.org instead of local cache (supports only GRCh38 VCFs listing <100 events)"
    ref_fast_a: "Reference FASTA file [~/.vep/homo_sapiens/95_GRCh37/Homo_sapiens.GRCh37.75.dna.primary_assembly.fa.gz]"
    filter_vcf: "A VCF for FILTER tag common_variant. Set to 0 to disable [~/.vep/ExAC_nonTCGA.r0.3.1.sites.vep.vcf.gz]"
    max_filter_ac: "Use tag common_variant if the filter-vcf reports a subpopulation AC higher than this [10]"
    species: "Ensembl-friendly name of species (e.g. mus_musculus for mouse) [homo_sapiens]"
    ncbi_build: "NCBI reference assembly of variants MAF (e.g. GRCm38 for mouse) [GRCh37]"
    cache_version: "Version of offline cache to use with VEP (e.g. 75, 84, 91) [Default: Installed version]"
    maf_center: "Variant calling center to report in MAF [.]"
    retain_info: "Comma-delimited names of INFO fields to retain as extra columns in MAF []"
    retain_fmt: "Comma-delimited names of FORMAT fields to retain as extra columns in MAF []"
    min_hom_vaf: "If GT undefined in VCF, minimum allele fraction to call a variant homozygous [0.7]"
    remap_chain: "Chain file to remap variants to a different assembly before running VEP"
    man: "Print the detailed manual"
  }
}