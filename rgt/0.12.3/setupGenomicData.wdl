version 1.0

task SetupGenomicData.py {
  input {
    Boolean? all
    Boolean? h_gone_nine
    Boolean? hg_three_eight
    Boolean? mm_nine
    Boolean? mm_one_zero
    Boolean? zv_nine
    Boolean? zv_one_zero
    String? h_gone_nine_genome_path
    String? hg_three_eight_genome_path
    String? mm_nine_genome_path
    String? mm_one_zero_genome_path
    String? zv_nine_genome_path
    String? zv_one_zero_genome_path
    String? h_gone_nine_gtf_path
    String? hg_three_eight_gtf_path
    String? mm_nine_gtf_path
    String? mm_one_zero_gtf_path
    String? zv_nine_gtf_path
    String? zv_one_zero_gtf_path
    Boolean? hg_three_eight_rm
    Boolean? h_gone_nine_rm
    Boolean? mm_nine_rm
  }
  command <<<
    setupGenomicData.py \
      ~{true="--all" false="" all} \
      ~{true="--hg19" false="" h_gone_nine} \
      ~{true="--hg38" false="" hg_three_eight} \
      ~{true="--mm9" false="" mm_nine} \
      ~{true="--mm10" false="" mm_one_zero} \
      ~{true="--zv9" false="" zv_nine} \
      ~{true="--zv10" false="" zv_one_zero} \
      ~{if defined(h_gone_nine_genome_path) then ("--hg19-genome-path " +  '"' + h_gone_nine_genome_path + '"') else ""} \
      ~{if defined(hg_three_eight_genome_path) then ("--hg38-genome-path " +  '"' + hg_three_eight_genome_path + '"') else ""} \
      ~{if defined(mm_nine_genome_path) then ("--mm9-genome-path " +  '"' + mm_nine_genome_path + '"') else ""} \
      ~{if defined(mm_one_zero_genome_path) then ("--mm10-genome-path " +  '"' + mm_one_zero_genome_path + '"') else ""} \
      ~{if defined(zv_nine_genome_path) then ("--zv9-genome-path " +  '"' + zv_nine_genome_path + '"') else ""} \
      ~{if defined(zv_one_zero_genome_path) then ("--zv10-genome-path " +  '"' + zv_one_zero_genome_path + '"') else ""} \
      ~{if defined(h_gone_nine_gtf_path) then ("--hg19-gtf-path " +  '"' + h_gone_nine_gtf_path + '"') else ""} \
      ~{if defined(hg_three_eight_gtf_path) then ("--hg38-gtf-path " +  '"' + hg_three_eight_gtf_path + '"') else ""} \
      ~{if defined(mm_nine_gtf_path) then ("--mm9-gtf-path " +  '"' + mm_nine_gtf_path + '"') else ""} \
      ~{if defined(mm_one_zero_gtf_path) then ("--mm10-gtf-path " +  '"' + mm_one_zero_gtf_path + '"') else ""} \
      ~{if defined(zv_nine_gtf_path) then ("--zv9-gtf-path " +  '"' + zv_nine_gtf_path + '"') else ""} \
      ~{if defined(zv_one_zero_gtf_path) then ("--zv10-gtf-path " +  '"' + zv_one_zero_gtf_path + '"') else ""} \
      ~{true="--hg38-rm" false="" hg_three_eight_rm} \
      ~{true="--hg19-rm" false="" h_gone_nine_rm} \
      ~{true="--mm9-rm" false="" mm_nine_rm}
  >>>
  parameter_meta {
    all: "Fetch all data sets."
    h_gone_nine: "Fetch human genome files."
    hg_three_eight: "Fetch human genome files."
    mm_nine: "Fetch mouse files."
    mm_one_zero: "Fetch mouse files."
    zv_nine: "Fetch zebrafish files."
    zv_one_zero: "Fetch zebrafish files."
    h_gone_nine_genome_path: "Path to an already existing hg19 genome (all chromosomes in the same file)."
    hg_three_eight_genome_path: "Path to an already existing hg38 genome (all chromosomes in the same file)."
    mm_nine_genome_path: "Path to an already existing mm9 genome (all chromosomes in the same file)."
    mm_one_zero_genome_path: "Path to an already existing mm9 genome (all chromosomes in the same file)."
    zv_nine_genome_path: "Path to an already existing zv9 genome (all chromosomes in the same file)."
    zv_one_zero_genome_path: "Path to an already existing zv10 genome (all chromosomes in the same file)."
    h_gone_nine_gtf_path: "Path to an already existing hg19 GTF file."
    hg_three_eight_gtf_path: "Path to an already existing hg38 GTF file."
    mm_nine_gtf_path: "Path to an already existing mm9 GTF file."
    mm_one_zero_gtf_path: "Path to an already existing mm10 GTF file."
    zv_nine_gtf_path: "Path to an already existing zv9 GTF file."
    zv_one_zero_gtf_path: "Path to an already existing zv10 GTF file."
    hg_three_eight_rm: "Fetch repeat masker files for hg38 from Broad institute."
    h_gone_nine_rm: "Fetch repeat masker files for hg19 from Broad institute."
    mm_nine_rm: "Fetch repeat masker files for mm9 from Broad institute."
  }
}