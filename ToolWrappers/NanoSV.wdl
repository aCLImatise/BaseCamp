version 1.0

task NanoSV {
  input {
    Int? threads
    File? samba_mba
    File? config
    File? bed
    File? give_path_output
    File? snp_file
  }
  command <<<
    NanoSV \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(samba_mba) then ("--sambamba " +  '"' + samba_mba + '"') else ""} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{if defined(give_path_output) then ("--output " +  '"' + give_path_output + '"') else ""} \
      ~{if defined(snp_file) then ("--snp_file " +  '"' + snp_file + '"') else ""}
  >>>
  parameter_meta {
    threads: "Number of threads [default: 4]"
    samba_mba: "Give the full path to the sambamba or samtools\\nexecutable [default: sambamba ]"
    config: "Give the full path to your own ini file [ default:\\nconfig.ini ]"
    bed: "Give the full path to your own bed file, used for\\ncoverage depth calculations [default: human_hg19.bed ]"
    give_path_output: "Give the full path to the output vcf file [default:\\n<stdout> ]"
    snp_file: "Give full path to the SNP variant file for phasing.\\nSupporting file formats: BED and VCF"
  }
  output {
    File out_stdout = stdout()
    File out_give_path_output = "${in_give_path_output}"
  }
}