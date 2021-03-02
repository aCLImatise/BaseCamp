version 1.0

task PhyluceProbeStripMaskedLociFromSet {
  input {
    File? bed
    Int? two_bit
    File? output_bed_file
    String? filter_mask
    Int? max_n
    Int? min_length
  }
  command <<<
    phyluce_probe_strip_masked_loci_from_set \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{if defined(two_bit) then ("--twobit " +  '"' + two_bit + '"') else ""} \
      ~{if defined(output_bed_file) then ("--output " +  '"' + output_bed_file + '"') else ""} \
      ~{if defined(filter_mask) then ("--filter-mask " +  '"' + filter_mask + '"') else ""} \
      ~{if defined(max_n) then ("--max-n " +  '"' + max_n + '"') else ""} \
      ~{if defined(min_length) then ("--min-length " +  '"' + min_length + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    bed: "The input BED file"
    two_bit: "The input genome to slice in UCSC 2bit format"
    output_bed_file: "The output BED file"
    filter_mask: "Filter strings with > X frequency of masked bases"
    max_n: "The maximum number of ambiguous bases ('N') to accept"
    min_length: "The minimum length loci to keep\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_bed_file = "${in_output_bed_file}"
  }
}