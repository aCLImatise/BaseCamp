version 1.0

task BamReadcount {
  input {
    Boolean? output_version_number
    Boolean? arg_minimum_quality
    Boolean? arg_minimum_base
    Boolean? arg_max_depth
    Boolean? arg_file_containing
    Boolean? arg_reference_sequence
    Boolean? arg_report_qualities
    Boolean? report_results_library
    Boolean? arg_maximum_number
    Boolean? generate_indel_readcounts
    String bam_file
    String? region
  }
  command <<<
    bam-readcount \
      ~{bam_file} \
      ~{region} \
      ~{true="-v" false="" output_version_number} \
      ~{true="-q" false="" arg_minimum_quality} \
      ~{true="-b" false="" arg_minimum_base} \
      ~{true="-d" false="" arg_max_depth} \
      ~{true="-l" false="" arg_file_containing} \
      ~{true="-f" false="" arg_reference_sequence} \
      ~{true="-D" false="" arg_report_qualities} \
      ~{true="-p" false="" report_results_library} \
      ~{true="-w" false="" arg_maximum_number} \
      ~{true="-i" false="" generate_indel_readcounts}
  >>>
  parameter_meta {
    output_version_number: "[ --version ]                      output the version number"
    arg_minimum_quality: "[ --min-mapping-quality ] arg (=0) minimum mapping quality of reads used  for counting."
    arg_minimum_base: "[ --min-base-quality ] arg (=0)    minimum base quality at a position to  use the read for counting."
    arg_max_depth: "[ --max-count ] arg (=10000000)    max depth to avoid excessive memory  usage."
    arg_file_containing: "[ --site-list ] arg                file containing a list of regions to  report readcounts within."
    arg_reference_sequence: "[ --reference-fasta ] arg          reference sequence in the fasta format."
    arg_report_qualities: "[ --print-individual-mapq ] arg    report the mapping qualities as a comma separated list."
    report_results_library: "[ --per-library ]                  report results by library."
    arg_maximum_number: "[ --max-warnings ] arg             maximum number of warnings of each type to emit. -1 gives an unlimited number."
    generate_indel_readcounts: "[ --insertion-centric ]            generate indel centric readcounts.  Reads containing insertions will not be included in per-base counts"
    bam_file: ""
    region: ""
  }
}