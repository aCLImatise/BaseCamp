version 1.0

task Ema {
  input {
    File? specify_barcode_whitelist
    String? specify_output_prefix
    Int? number_barcode_make
    Boolean? output_bxzformatted_fastqs
    Int? set_number_threads
    Int? first_preprocessed_sorted
    Int? second_preprocessed_sorted
    File? specify_special_path
    Boolean? multiinput_mode_takes
    File? _indexed_reference
    String? full_read_group
    Boolean? apply_fragment_read
    Int? sequencing_platform_one
    Int? index_follow_tag
    String count_vertical_line_preproc_vertical_line_align_vertical_line_help
  }
  command <<<
    ema \
      ~{count_vertical_line_preproc_vertical_line_align_vertical_line_help} \
      ~{if defined(specify_barcode_whitelist) then ("-w " +  '"' + specify_barcode_whitelist + '"') else ""} \
      ~{if defined(specify_output_prefix) then ("-o " +  '"' + specify_output_prefix + '"') else ""} \
      ~{if defined(number_barcode_make) then ("-n " +  '"' + number_barcode_make + '"') else ""} \
      ~{if (output_bxzformatted_fastqs) then "-b" else ""} \
      ~{if defined(set_number_threads) then ("-t " +  '"' + set_number_threads + '"') else ""} \
      ~{if defined(first_preprocessed_sorted) then ("-1 " +  '"' + first_preprocessed_sorted + '"') else ""} \
      ~{if defined(second_preprocessed_sorted) then ("-2 " +  '"' + second_preprocessed_sorted + '"') else ""} \
      ~{if defined(specify_special_path) then ("-s " +  '"' + specify_special_path + '"') else ""} \
      ~{if (multiinput_mode_takes) then "-x" else ""} \
      ~{if defined(_indexed_reference) then ("-r " +  '"' + _indexed_reference + '"') else ""} \
      ~{if defined(full_read_group) then ("-R " +  '"' + full_read_group + '"') else ""} \
      ~{if (apply_fragment_read) then "-d" else ""} \
      ~{if defined(sequencing_platform_one) then ("-p " +  '"' + sequencing_platform_one + '"') else ""} \
      ~{if defined(index_follow_tag) then ("-i " +  '"' + index_follow_tag + '"') else ""}
  >>>
  parameter_meta {
    specify_barcode_whitelist: ": specify barcode whitelist [required]"
    specify_output_prefix: ": specify output prefix [required]"
    number_barcode_make: ": number of barcode buckets to make [500]"
    output_bxzformatted_fastqs: ": output BX:Z-formatted FASTQs [off]"
    set_number_threads: ": set number of threads [1]"
    first_preprocessed_sorted: ": first (preprocessed and sorted) FASTQ file [none]"
    second_preprocessed_sorted: ": second (preprocessed and sorted) FASTQ file [none]"
    specify_special_path: ": specify special FASTQ path [none]"
    multiinput_mode_takes: ": multi-input mode; takes input files after flags and spawns a thread for each [off]"
    _indexed_reference: ": indexed reference [required]"
    full_read_group: ": full read group string (e.g. '@RG\\tID:foo\\tSM:bar') [none]"
    apply_fragment_read: ": apply fragment read density optimization [off]"
    sequencing_platform_one: ": sequencing platform (one of '10x', 'tru', 'cpt') [10x]"
    index_follow_tag: ": index to follow 'BX' tag in SAM output [1]  -t <threads>: set number of threads [1]"
    count_vertical_line_preproc_vertical_line_align_vertical_line_help: ""
  }
  output {
    File out_stdout = stdout()
  }
}