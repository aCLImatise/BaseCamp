version 1.0

task AnnotateVcfBampy {
  input {
    File? bam
    Array[String] chromosomes
    Array[String] v_cfs
  }
  command <<<
    annotate_vcf_bam_py \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if defined(chromosomes) then ("--chromosomes " +  '"' + chromosomes + '"') else ""} \
      ~{if defined(v_cfs) then ("--vcfs " +  '"' + v_cfs + '"') else ""}
  >>>
  parameter_meta {
    bam: "BAM file (default: None)"
    chromosomes: "Chromosomes (default: [])"
    v_cfs: "Input VCF files (default: None)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}