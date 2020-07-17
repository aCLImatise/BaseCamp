version 1.0

task NanoSV {
  input {
    String? threads
    String? samba_mba
    String? config
    String? bed
    String? give_path_output
    String? snp_file
    String bam
  }
  command <<<
    NanoSV \
      ~{bam} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(samba_mba) then ("--sambamba " +  '"' + samba_mba + '"') else ""} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{if defined(give_path_output) then ("--output " +  '"' + give_path_output + '"') else ""} \
      ~{if defined(snp_file) then ("--snp_file " +  '"' + snp_file + '"') else ""}
  >>>
  parameter_meta {
    threads: "Number of threads [default: 4]"
    samba_mba: "Give the full path to the sambamba or samtools executable [default: sambamba ]"
    config: "Give the full path to your own ini file [ default: config.ini ]"
    bed: "Give the full path to your own bed file, used for coverage depth calculations [default: human_hg19.bed ]"
    give_path_output: "Give the full path to the output vcf file [default: <stdout> ]"
    snp_file: "Give full path to the SNP variant file for phasing. Supporting file formats: BED and VCF"
    bam: "/path/to/file.bam"
  }
}