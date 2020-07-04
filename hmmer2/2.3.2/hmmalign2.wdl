version 1.0

task Hmmalign2 {
  input {
    Boolean? only_print_symbols
    String? save_alignment_file
    Boolean? quiet_suppress_verbose
    String? in_format
    String? map_ali
    Boolean? one_line
    String? out_format
    String? with_ali
    Boolean? options
    String hmm_align
    String hmm_file
    String sequence_file
  }
  command <<<
    hmmalign2 \
      ~{hmm_align} \
      ~{hmm_file} \
      ~{sequence_file} \
      ~{true="-m" false="" only_print_symbols} \
      ~{if defined(save_alignment_file) then ("-o " +  '"' + save_alignment_file + '"') else ""} \
      ~{true="-q" false="" quiet_suppress_verbose} \
      ~{if defined(in_format) then ("--informat " +  '"' + in_format + '"') else ""} \
      ~{if defined(map_ali) then ("--mapali " +  '"' + map_ali + '"') else ""} \
      ~{true="--oneline" false="" one_line} \
      ~{if defined(out_format) then ("--outformat " +  '"' + out_format + '"') else ""} \
      ~{if defined(with_ali) then ("--withali " +  '"' + with_ali + '"') else ""} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    only_print_symbols: ": only print symbols aligned to match states"
    save_alignment_file: ": save alignment in file <f>"
    quiet_suppress_verbose: ": quiet - suppress verbose banner"
    in_format: ": sequence file is in format <s>"
    map_ali: ": include alignment in file <f> using map in HMM"
    one_line: ": output Stockholm fmt with 1 line/seq, not interleaved"
    out_format: ": output alignment in format <s> [default: Stockholm] formats include: MSF, Clustal, Phylip, SELEX"
    with_ali: ": include alignment to (fixed) alignment in file <f>"
    options: ""
    hmm_align: ""
    hmm_file: ""
    sequence_file: ""
  }
}