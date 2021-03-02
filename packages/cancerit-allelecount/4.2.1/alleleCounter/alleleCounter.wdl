version 1.0

task AlleleCounter {
  input {
    Boolean? loci_file
    Boolean? hts_file
    File? output_file
    Boolean? ref_file
    Boolean? min_base_qual
    Boolean? min_map_qual
    Boolean? contig
    Boolean? dense_snps
    Boolean? is_one_zero_x
    Boolean? required_flag
  }
  command <<<
    alleleCounter \
      ~{if (loci_file) then "--loci-file" else ""} \
      ~{if (hts_file) then "--hts-file" else ""} \
      ~{if (output_file) then "--output-file" else ""} \
      ~{if (ref_file) then "--ref-file" else ""} \
      ~{if (min_base_qual) then "--min-base-qual" else ""} \
      ~{if (min_map_qual) then "--min-map-qual" else ""} \
      ~{if (contig) then "--contig" else ""} \
      ~{if (dense_snps) then "--dense-snps" else ""} \
      ~{if (is_one_zero_x) then "--is-10x" else ""} \
      ~{if (required_flag) then "--required-flag" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/cancerit-allelecount:4.2.1--h3ecb661_0"
  }
  parameter_meta {
    loci_file: "[file]           Path to loci file."
    hts_file: "[file]            Path to sample HTS file."
    output_file: "[file]         Path write output file."
    ref_file: "[file]           Path to reference fasta index file.\\nNB. If cram format is supplied via -b and the reference listed in the cram header\\ncan't be found alleleCounter may fail to work correctly."
    min_base_qual: "[int]       Minimum base quality [Default: 20]."
    min_map_qual: "[int]        Minimum mapping quality [Default: 35]."
    contig: "[string]           Limit calling to named contig."
    dense_snps: "Improves performance where many positions are close together"
    is_one_zero_x: "Enables 10X processing mode.\\nIn this mode the HTS input file must be a cellranger produced BAM file.  Allele\\ncounts are then given on a per-cellular barcode basis, with each count representing\\nthe consensus base for that UMI.\\nby iterating through bam file rather than using a 'fetch' approach."
    required_flag: "[int]       Flag value of reads to retain in allele counting default: [3].\\nN.B. if the proper-pair flag is are selected, alleleCounter will assume paired-end\\nand filter out any proper-pair flagged reads not in F/R orientation. -F  --filtered-flag [int]       Flag value of reads to exclude in allele counting default: [3852]."
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}