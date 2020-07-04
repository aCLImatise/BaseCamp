version 1.0

task SomaticQC {
  input {
    File? tumor_bam
    File? normal_bam
    File? somatic_vcf
    File? out
    File? links
    File? target_bed
    File? target_exons
    File? blacklist
    File? tsg_bed
    File? ref
    Boolean? skip_plots
    String? build
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    SomaticQC \
      ~{if defined(tumor_bam) then ("-tumor_bam " +  '"' + tumor_bam + '"') else ""} \
      ~{if defined(normal_bam) then ("-normal_bam " +  '"' + normal_bam + '"') else ""} \
      ~{if defined(somatic_vcf) then ("-somatic_vcf " +  '"' + somatic_vcf + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(links) then ("-links " +  '"' + links + '"') else ""} \
      ~{if defined(target_bed) then ("-target_bed " +  '"' + target_bed + '"') else ""} \
      ~{if defined(target_exons) then ("-target_exons " +  '"' + target_exons + '"') else ""} \
      ~{if defined(blacklist) then ("-blacklist " +  '"' + blacklist + '"') else ""} \
      ~{if defined(tsg_bed) then ("-tsg_bed " +  '"' + tsg_bed + '"') else ""} \
      ~{if defined(ref) then ("-ref " +  '"' + ref + '"') else ""} \
      ~{true="-skip_plots" false="" skip_plots} \
      ~{if defined(build) then ("-build " +  '"' + build + '"') else ""} \
      ~{true="--changelog" false="" changelog} \
      ~{true="--tdx" false="" tdx}
  >>>
  parameter_meta {
    tumor_bam: "Input tumor BAM file."
    normal_bam: "Input normal BAM file."
    somatic_vcf: "Input somatic VCF file."
    out: "Output qcML file. If unset, writes to STDOUT. Default value: ''"
    links: "Files that appear in the link part of the qcML file. Default value: ''"
    target_bed: "Target file used for tumor and normal experiment. Default value: ''"
    target_exons: "BED file containing target exons, neccessary for TMB calculation. Please provide a file that contains the coordinates of all exons in the reference genome. Default value: ''"
    blacklist: "BED file containing regions which are ignored in TMB calculation. Default value: ''"
    tsg_bed: "BED file containing regions of tumor suppressor genes for TMB calculation. Default value: ''"
    ref: "Reference genome FASTA file. If unset 'reference_genome' from the 'settings.ini' file is used. Default value: ''"
    skip_plots: "Skip plots (intended to increase speed of automated tests). Default value: 'false'"
    build: "Genome build used to generate the input. Default value: 'hg19' Valid: 'hg19,hg38'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
}