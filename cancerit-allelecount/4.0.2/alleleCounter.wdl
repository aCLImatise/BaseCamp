version 1.0

task AlleleCounter {
  input {
    Boolean? loci_file
    Boolean? hts_file
    Boolean? output_file
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
      ~{true="--loci-file" false="" loci_file} \
      ~{true="--hts-file" false="" hts_file} \
      ~{true="--output-file" false="" output_file} \
      ~{true="--ref-file" false="" ref_file} \
      ~{true="--min-base-qual" false="" min_base_qual} \
      ~{true="--min-map-qual" false="" min_map_qual} \
      ~{true="--contig" false="" contig} \
      ~{true="--dense-snps" false="" dense_snps} \
      ~{true="--is-10x" false="" is_one_zero_x} \
      ~{true="--required-flag" false="" required_flag}
  >>>
  parameter_meta {
    loci_file: "[file]           Path to loci file."
    hts_file: "[file]            Path to sample HTS file."
    output_file: "[file]         Path write output file."
    ref_file: "[file]           Path to reference fasta index file. NB. If cram format is supplied via -b and the reference listed in the cram header can't be found alleleCounter may fail to work correctly."
    min_base_qual: "[int]       Minimum base quality [Default: 20]."
    min_map_qual: "[int]        Minimum mapping quality [Default: 35]."
    contig: "[string]           Limit calling to named contig."
    dense_snps: "Improves performance where many positions are close together "
    is_one_zero_x: "Enables 10X processing mode. In this mode the HTS input file must be a cellranger produced BAM file.  Allele counts are then given on a per-cellular barcode basis, with each count representing the consensus base for that UMI.  by iterating through bam file rather than using a 'fetch' approach."
    required_flag: "[int]       Flag value of reads to retain in allele counting default: [3]. N.B. if the proper-pair flag is are selected, alleleCounter will assume paired-end and filter out any proper-pair flagged reads not in F/R orientation. -F  --filtered-flag [int]       Flag value of reads to exclude in allele counting default: [3852]."
  }
}