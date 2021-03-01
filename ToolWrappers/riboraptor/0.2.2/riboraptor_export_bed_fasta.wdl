version 1.0

task RiboraptorExportbedfasta {
  input {
    File? region_bed
    File? fast_a
    File? prefix
    File? chrom_sizes
    Int? offset_five_p
    Int? offset_three_p
    Boolean? ignore_tx_version
  }
  command <<<
    riboraptor export_bed_fasta \
      ~{if defined(region_bed) then ("--region_bed " +  '"' + region_bed + '"') else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(chrom_sizes) then ("--chrom_sizes " +  '"' + chrom_sizes + '"') else ""} \
      ~{if defined(offset_five_p) then ("--offset_5p " +  '"' + offset_five_p + '"') else ""} \
      ~{if defined(offset_three_p) then ("--offset_3p " +  '"' + offset_three_p + '"') else ""} \
      ~{if (ignore_tx_version) then "--ignore_tx_version" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    region_bed: "Path to bed file  [required]"
    fast_a: "Path to fasta file  [required]"
    prefix: "Path to write output"
    chrom_sizes: "Path to chrom.sizes  [required]"
    offset_five_p: "Number of upstream bases to count(5')"
    offset_three_p: "Number of downstream bases to count(3')"
    ignore_tx_version: "Ignore version (.xyz) in gene names"
  }
  output {
    File out_stdout = stdout()
    File out_prefix = "${in_prefix}"
  }
}