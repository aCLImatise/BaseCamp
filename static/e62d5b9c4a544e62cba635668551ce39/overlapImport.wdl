version 1.0

task OverlapImport {
  input {
    File? path_valid_sequence
    File? output_file_name
    String? output_overlap_store
    Boolean? coords
    Boolean? hangs
    Boolean? unaligned
    Boolean? paf
    Boolean? raw
    Boolean? obt
    Boolean? utg
    String? random
    String? read_ids_be
    String? b_read_ids
    File ascii_ovl_file_input_dot
  }
  command <<<
    overlapImport \
      ~{ascii_ovl_file_input_dot} \
      ~{if defined(path_valid_sequence) then ("-S " +  '"' + path_valid_sequence + '"') else ""} \
      ~{if defined(output_file_name) then ("-o " +  '"' + output_file_name + '"') else ""} \
      ~{if defined(output_overlap_store) then ("-O " +  '"' + output_overlap_store + '"') else ""} \
      ~{if (coords) then "-coords" else ""} \
      ~{if (hangs) then "-hangs" else ""} \
      ~{if (unaligned) then "-unaligned" else ""} \
      ~{if (paf) then "-paf" else ""} \
      ~{if (raw) then "-raw" else ""} \
      ~{if (obt) then "-obt" else ""} \
      ~{if (utg) then "-utg" else ""} \
      ~{if defined(random) then ("-random " +  '"' + random + '"') else ""} \
      ~{if defined(read_ids_be) then ("-a " +  '"' + read_ids_be + '"') else ""} \
      ~{if defined(b_read_ids) then ("-b " +  '"' + b_read_ids + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/canu:2.1.1--he1b5a44_1"
  }
  parameter_meta {
    path_valid_sequence: "path to valid sequence store"
    output_file_name: "output file name"
    output_overlap_store: "output overlap store"
    coords: "as coordinates on each read (default)"
    hangs: "as dovetail hangs"
    unaligned: "as unaligned regions on each read"
    paf: "as miniasm Pairwise mApping Format"
    raw: "uncorrected raw reads"
    obt: "corrected reads"
    utg: "trimmed reads"
    random: "create N random overlaps, for store testing"
    read_ids_be: "A read IDs will be between x and y"
    b_read_ids: "B read IDs will be between x and y"
    ascii_ovl_file_input_dot: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file_name = "${in_output_file_name}"
  }
}