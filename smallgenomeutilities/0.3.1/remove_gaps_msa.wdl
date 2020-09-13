version 1.0

task RemoveGapsMsa {
  input {
    File? name_write_sequences
    Int? minimum_case_coverage
    Boolean? use_bases_ones
    Boolean? print_loci_discarded
    String msa_file
  }
  command <<<
    remove_gaps_msa \
      ~{msa_file} \
      ~{if defined(name_write_sequences) then ("-o " +  '"' + name_write_sequences + '"') else ""} \
      ~{if defined(minimum_case_coverage) then ("-p " +  '"' + minimum_case_coverage + '"') else ""} \
      ~{if (use_bases_ones) then "-a" else ""} \
      ~{if (print_loci_discarded) then "-q" else ""}
  >>>
  parameter_meta {
    name_write_sequences: "Name of output file to write sequences to"
    minimum_case_coverage: "Minimum case coverage to keep locus"
    use_bases_ones: "Use all bases, not just uppercase ones"
    print_loci_discarded: "Do not print which loci were discarded"
    msa_file: "file containing MSA"
  }
  output {
    File out_stdout = stdout()
    File out_name_write_sequences = "${in_name_write_sequences}"
  }
}