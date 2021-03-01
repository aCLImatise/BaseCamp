version 1.0

task SetupGenomicDatapy {
  input {
    Boolean? all
    Boolean? h_gone_nine
    Boolean? hg_three_eight
    Boolean? mm_nine
    Boolean? mm_one_zero
    Boolean? zv_nine
    Boolean? zv_one_zero
    File? h_gone_nine_genome_path
    File? hg_three_eight_genome_path
    File? mm_nine_genome_path
    File? mm_one_zero_genome_path
    File? zv_nine_genome_path
    File? zv_one_zero_genome_path
    File? h_gone_nine_gtf_path
    File? hg_three_eight_gtf_path
    File? mm_nine_gtf_path
    File? mm_one_zero_gtf_path
    File? zv_nine_gtf_path
    File? zv_one_zero_gtf_path
    Boolean? hg_three_eight_rm
  }
  command <<<
    setupGenomicData_py \
      ~{if (all) then "--all" else ""} \
      ~{if (h_gone_nine) then "--hg19" else ""} \
      ~{if (hg_three_eight) then "--hg38" else ""} \
      ~{if (mm_nine) then "--mm9" else ""} \
      ~{if (mm_one_zero) then "--mm10" else ""} \
      ~{if (zv_nine) then "--zv9" else ""} \
      ~{if (zv_one_zero) then "--zv10" else ""} \
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
      ~{if (hg_three_eight_rm) then "--hg38-rm" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    all: "Fetch all data sets."
    h_gone_nine: "Fetch human genome files."
    hg_three_eight: "Fetch human genome files."
    mm_nine: "Fetch mouse files."
    mm_one_zero: "Fetch mouse files."
    zv_nine: "Fetch zebrafish files."
    zv_one_zero: "Fetch zebrafish files."
    h_gone_nine_genome_path: "Path to an already existing hg19 genome (all\\nchromosomes in the same file)."
    hg_three_eight_genome_path: "Path to an already existing hg38 genome (all\\nchromosomes in the same file)."
    mm_nine_genome_path: "Path to an already existing mm9 genome (all\\nchromosomes in the same file)."
    mm_one_zero_genome_path: "Path to an already existing mm9 genome (all\\nchromosomes in the same file)."
    zv_nine_genome_path: "Path to an already existing zv9 genome (all\\nchromosomes in the same file)."
    zv_one_zero_genome_path: "Path to an already existing zv10 genome (all\\nchromosomes in the same file)."
    h_gone_nine_gtf_path: "Path to an already existing hg19 GTF file."
    hg_three_eight_gtf_path: "Path to an already existing hg38 GTF file."
    mm_nine_gtf_path: "Path to an already existing mm9 GTF file."
    mm_one_zero_gtf_path: "Path to an already existing mm10 GTF file."
    zv_nine_gtf_path: "Path to an already existing zv9 GTF file."
    zv_one_zero_gtf_path: "Path to an already existing zv10 GTF file."
    hg_three_eight_rm: "Fetch repeat masker files for hg38 from Broad"
  }
  output {
    File out_stdout = stdout()
  }
}