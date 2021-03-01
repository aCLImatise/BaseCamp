version 1.0

task Vcfevenregions {
  input {
    File? fast_a_reference
    Int? number_of_regions
    Int? number_of_positions
    String? offset
    Int? overlap
    String? separator
    File vcf_file
  }
  command <<<
    vcfevenregions \
      ~{vcf_file} \
      ~{if defined(fast_a_reference) then ("--fasta-reference " +  '"' + fast_a_reference + '"') else ""} \
      ~{if defined(number_of_regions) then ("--number-of-regions " +  '"' + number_of_regions + '"') else ""} \
      ~{if defined(number_of_positions) then ("--number-of-positions " +  '"' + number_of_positions + '"') else ""} \
      ~{if defined(offset) then ("--offset " +  '"' + offset + '"') else ""} \
      ~{if defined(overlap) then ("--overlap " +  '"' + overlap + '"') else ""} \
      ~{if defined(separator) then ("--separator " +  '"' + separator + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/vcflib:1.0.1--hd2e4403_1"
  }
  parameter_meta {
    fast_a_reference: "FASTA reference file to use to obtain primer sequences."
    number_of_regions: "The number of desired regions."
    number_of_positions: "The number of positions per region."
    offset: "Add an offset to region positioning, to avoid boundary\\nrelated artifacts in downstream processing."
    overlap: "The number of sites to overlap between regions.  Default 0."
    separator: "Specify string to use to separate region output.  Default '-'"
    vcf_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}