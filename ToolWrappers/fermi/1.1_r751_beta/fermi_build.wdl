version 1.0

task FermiBuild {
  input {
    Int? use_small_marker
    File? force_overwrite_file
    File? append_fmindex_existing
    Int? trim_read_bp
    File? output_file_name
    Boolean? trim_bp_reads
    Int? number_symbols_process
    String in_dot_fa
  }
  command <<<
    fermi build \
      ~{in_dot_fa} \
      ~{if defined(use_small_marker) then ("-b " +  '"' + use_small_marker + '"') else ""} \
      ~{if (force_overwrite_file) then "-f" else ""} \
      ~{if defined(append_fmindex_existing) then ("-i " +  '"' + append_fmindex_existing + '"') else ""} \
      ~{if defined(trim_read_bp) then ("-l " +  '"' + trim_read_bp + '"') else ""} \
      ~{if defined(output_file_name) then ("-o " +  '"' + output_file_name + '"') else ""} \
      ~{if (trim_bp_reads) then "-O" else ""} \
      ~{if defined(number_symbols_process) then ("-s " +  '"' + number_symbols_process + '"') else ""}
  >>>
  parameter_meta {
    use_small_marker: "use a small marker per 2^(INT+3) bytes [3]"
    force_overwrite_file: "force to overwrite the output file (effective with -o)"
    append_fmindex_existing: "append the FM-index to the existing FILE [null]"
    trim_read_bp: "trim read down to INT bp [inf]"
    output_file_name: "output file name [null]"
    trim_bp_reads: "do not trim 1bp for reads whose forward and reverse are identical"
    number_symbols_process: "number of symbols to process at a time [250000000]"
    in_dot_fa: ""
  }
  output {
    File out_stdout = stdout()
    File out_force_overwrite_file = "${in_force_overwrite_file}"
    File out_output_file_name = "${in_output_file_name}"
  }
}