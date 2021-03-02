version 1.0

task SamtoolsFasta {
  input {
    File? write_reads_designated_readother
    File? one
    File? two
    File? write_reads_designated_read_read
    Int? only_include_reads_flags_present
    Int? only_include_reads_none_present
    Int? only_exclude_reads
    Boolean? append_read_name
    Boolean? always_append_read
    File? write_singleton_reads
    Boolean? copy_bc_tags
    String? copy_arbitrary_tags
    File? input_fmt_option
    File? reference
    Int? threads
    Int? verbosity
    Int i_one_four_i_eight
    Int n_eight_i_one_four
  }
  command <<<
    samtools fasta \
      ~{i_one_four_i_eight} \
      ~{n_eight_i_one_four} \
      ~{if defined(write_reads_designated_readother) then ("-0 " +  '"' + write_reads_designated_readother + '"') else ""} \
      ~{if defined(one) then ("-1 " +  '"' + one + '"') else ""} \
      ~{if defined(two) then ("-2 " +  '"' + two + '"') else ""} \
      ~{if defined(write_reads_designated_read_read) then ("-o " +  '"' + write_reads_designated_read_read + '"') else ""} \
      ~{if defined(only_include_reads_flags_present) then ("-f " +  '"' + only_include_reads_flags_present + '"') else ""} \
      ~{if defined(only_include_reads_none_present) then ("-F " +  '"' + only_include_reads_none_present + '"') else ""} \
      ~{if defined(only_exclude_reads) then ("-G " +  '"' + only_exclude_reads + '"') else ""} \
      ~{if (append_read_name) then "-n" else ""} \
      ~{if (always_append_read) then "-N" else ""} \
      ~{if defined(write_singleton_reads) then ("-s " +  '"' + write_singleton_reads + '"') else ""} \
      ~{if (copy_bc_tags) then "-t" else ""} \
      ~{if defined(copy_arbitrary_tags) then ("-T " +  '"' + copy_arbitrary_tags + '"') else ""} \
      ~{if defined(input_fmt_option) then ("--input-fmt-option " +  '"' + input_fmt_option + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/samtools:1.11--h6270b1f_0"
  }
  parameter_meta {
    write_reads_designated_readother: "write reads designated READ_OTHER to FILE"
    one: "write reads designated READ1 to FILE"
    two: "write reads designated READ2 to FILE"
    write_reads_designated_read_read: "write reads designated READ1 or READ2 to FILE\\nnote: if a singleton file is specified with -s, only\\npaired reads will be written to the -1 and -2 files."
    only_include_reads_flags_present: "only include reads with all  of the FLAGs in INT present [0]"
    only_include_reads_none_present: "only include reads with none of the FLAGS in INT present [0x900]"
    only_exclude_reads: "only EXCLUDE reads with all  of the FLAGs in INT present [0]"
    append_read_name: "don't append /1 and /2 to the read name"
    always_append_read: "always append /1 and /2 to the read name"
    write_singleton_reads: "write singleton reads designated READ1 or READ2 to FILE"
    copy_bc_tags: "copy RG, BC and QT tags to the FASTA header line"
    copy_arbitrary_tags: "copy arbitrary tags to the FASTA header line"
    input_fmt_option: "[=VAL]\\nSpecify a single input file format option in the form\\nof OPTION or OPTION=VALUE"
    reference: "Reference sequence FASTA FILE [null]"
    threads: "Number of additional threads to use [0]"
    verbosity: "Set level of verbosity"
    i_one_four_i_eight: "the first 14 characters are index 1, the next 8 characters are index 2"
    n_eight_i_one_four: "ignore the first 8 characters, and use the next 14 characters for index 1"
  }
  output {
    File out_stdout = stdout()
  }
}