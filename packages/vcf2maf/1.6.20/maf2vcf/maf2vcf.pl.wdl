version 1.0

task Maf2vcfpl {
  input {
    Boolean? input_maf
    File? output_dir
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
    maf2vcf_pl \
      ~{if (input_maf) then "--input-maf" else ""} \
      ~{if (output_dir) then "--output-dir" else ""} \
      ~{if (output_vcf) then "--output-vcf" else ""} \
      ~{if (ref_fast_a) then "--ref-fasta" else ""} \
      ~{if (per_tn_v_cfs) then "--per-tn-vcfs" else ""} \
      ~{if (tum_depth_col) then "--tum-depth-col" else ""} \
      ~{if (tum_rad_col) then "--tum-rad-col" else ""} \
      ~{if (tum_vad_col) then "--tum-vad-col" else ""} \
      ~{if (nrm_depth_col) then "--nrm-depth-col" else ""} \
      ~{if (nrm_rad_col) then "--nrm-rad-col" else ""} \
      ~{if (nrm_vad_col) then "--nrm-vad-col" else ""} \
      ~{if (man) then "--man" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/vcf2maf:1.6.20--hdfd78af_1"
  }
  parameter_meta {
    input_maf: "Path to input file in MAF format"
    output_dir: "Path to output directory where VCFs will be stored, one per TN-pair"
    output_vcf: "Path to output multi-sample VCF containing all TN-pairs [<output-dir>/<input-maf-name>.vcf]"
    ref_fast_a: "Path to reference Fasta file [~/.vep/homo_sapiens/102_GRCh37/Homo_sapiens.GRCh37.dna.toplevel.fa.gz]"
    per_tn_v_cfs: "Specify this to generate VCFs per-TN pair, in addition to the multi-sample VCF"
    tum_depth_col: "Name of MAF column for read depth in tumor BAM [t_depth]"
    tum_rad_col: "Name of MAF column for reference allele depth in tumor BAM [t_ref_count]"
    tum_vad_col: "Name of MAF column for variant allele depth in tumor BAM [t_alt_count]"
    nrm_depth_col: "Name of MAF column for read depth in normal BAM [n_depth]"
    nrm_rad_col: "Name of MAF column for reference allele depth in normal BAM [n_ref_count]"
    nrm_vad_col: "Name of MAF column for variant allele depth in normal BAM [n_alt_count]"
    man: "Print the detailed manual"
  }
  output {
    File out_stdout = stdout()
    File out_output_dir = "${in_output_dir}"
  }
}