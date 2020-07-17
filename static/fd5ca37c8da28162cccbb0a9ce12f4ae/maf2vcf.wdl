version 1.0

task Maf2vcf.pl {
  input {
    Boolean? input_maf
    Boolean? output_dir
    Boolean? output_vcf
    Boolean? ref_fast_a
    Boolean? per_tn_v_cfs
    Boolean? tum_depth_col
    Boolean? tum_rad_col
    Boolean? tum_vad_col
    Boolean? nrm_depth_col
    Boolean? nrm_rad_col
    Boolean? nrm_vad_col
    Boolean? man
  }
  command <<<
    maf2vcf.pl \
      ~{true="--input-maf" false="" input_maf} \
      ~{true="--output-dir" false="" output_dir} \
      ~{true="--output-vcf" false="" output_vcf} \
      ~{true="--ref-fasta" false="" ref_fast_a} \
      ~{true="--per-tn-vcfs" false="" per_tn_v_cfs} \
      ~{true="--tum-depth-col" false="" tum_depth_col} \
      ~{true="--tum-rad-col" false="" tum_rad_col} \
      ~{true="--tum-vad-col" false="" tum_vad_col} \
      ~{true="--nrm-depth-col" false="" nrm_depth_col} \
      ~{true="--nrm-rad-col" false="" nrm_rad_col} \
      ~{true="--nrm-vad-col" false="" nrm_vad_col} \
      ~{true="--man" false="" man}
  >>>
  parameter_meta {
    input_maf: "Path to input file in MAF format"
    output_dir: "Path to output directory where VCFs will be stored, one per TN-pair"
    output_vcf: "Path to output multi-sample VCF containing all TN-pairs [<output-dir>/<input-maf-name>.vcf]"
    ref_fast_a: "Path to reference Fasta file [~/.vep/homo_sapiens/91_GRCh37/Homo_sapiens.GRCh37.75.dna.primary_assembly.fa.gz]"
    per_tn_v_cfs: "Specify this to generate VCFs per-TN pair, in addition to the multi-sample VCF"
    tum_depth_col: "Name of MAF column for read depth in tumor BAM [t_depth]"
    tum_rad_col: "Name of MAF column for reference allele depth in tumor BAM [t_ref_count]"
    tum_vad_col: "Name of MAF column for variant allele depth in tumor BAM [t_alt_count]"
    nrm_depth_col: "Name of MAF column for read depth in normal BAM [n_depth]"
    nrm_rad_col: "Name of MAF column for reference allele depth in normal BAM [n_ref_count]"
    nrm_vad_col: "Name of MAF column for variant allele depth in normal BAM [n_alt_count]"
    man: "Print the detailed manual"
  }
}