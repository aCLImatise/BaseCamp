version 1.0

task Bamreadcount {
  input {
    Boolean? output_version_number
    Boolean? arg_minimum_mapping
    Boolean? arg_minimum_base
    Boolean? arg_max_depth
    Boolean? arg_reference_sequence
    Boolean? arg_report_qualities
    Boolean? report_results_library
    Boolean? arg_maximum_number
    Boolean? generate_indel_readcountsreads
    String usage_dot
  }
  command <<<
    bam_readcount \
      ~{usage_dot} \
      ~{if (output_version_number) then "-v" else ""} \
      ~{if (arg_minimum_mapping) then "-q" else ""} \
      ~{if (arg_minimum_base) then "-b" else ""} \
      ~{if (arg_max_depth) then "-d" else ""} \
      ~{if (arg_reference_sequence) then "-f" else ""} \
      ~{if (arg_report_qualities) then "-D" else ""} \
      ~{if (report_results_library) then "-p" else ""} \
      ~{if (arg_maximum_number) then "-w" else ""} \
      ~{if (generate_indel_readcountsreads) then "-i" else ""}
  >>>
  parameter_meta {
    output_version_number: "[ --version ]                      output the version number"
    arg_minimum_mapping: "[ --min-mapping-quality ] arg (=0) minimum mapping quality of reads used\\nfor counting."
    arg_minimum_base: "[ --min-base-quality ] arg (=0)    minimum base quality at a position to\\nuse the read for counting."
    arg_max_depth: "[ --max-count ] arg (=10000000)    max depth to avoid excessive memory"
    arg_reference_sequence: "[ --reference-fasta ] arg          reference sequence in the fasta format."
    arg_report_qualities: "[ --print-individual-mapq ] arg    report the mapping qualities as a comma\\nseparated list."
    report_results_library: "[ --per-library ]                  report results by library."
    arg_maximum_number: "[ --max-warnings ] arg             maximum number of warnings of each type\\nto emit. -1 gives an unlimited number."
    generate_indel_readcountsreads: "[ --insertion-centric ]            generate indel centric readcounts.\\nReads containing insertions will not be\\nincluded in per-base counts\\n"
    usage_dot: "-l [ --site-list ] arg                file containing a list of regions to "
  }
  output {
    File out_stdout = stdout()
  }
}