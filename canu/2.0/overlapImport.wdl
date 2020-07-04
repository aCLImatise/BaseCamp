version 1.0

task OverlapImport {
  input {
    String? path_valid_sequence
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
    String? a_read_ids_will_y
    String? b_read_ids_will_y
    String ascii_ovl_file_input_dot
  }
  command <<<
    overlapImport \
      ~{ascii_ovl_file_input_dot} \
      ~{if defined(path_valid_sequence) then ("-S " +  '"' + path_valid_sequence + '"') else ""} \
      ~{if defined(output_file_name) then ("-o " +  '"' + output_file_name + '"') else ""} \
      ~{if defined(output_overlap_store) then ("-O " +  '"' + output_overlap_store + '"') else ""} \
      ~{true="-coords" false="" coords} \
      ~{true="-hangs" false="" hangs} \
      ~{true="-unaligned" false="" unaligned} \
      ~{true="-paf" false="" paf} \
      ~{true="-raw" false="" raw} \
      ~{true="-obt" false="" obt} \
      ~{true="-utg" false="" utg} \
      ~{if defined(random) then ("-random " +  '"' + random + '"') else ""} \
      ~{if defined(a_read_ids_will_y) then ("-a " +  '"' + a_read_ids_will_y + '"') else ""} \
      ~{if defined(b_read_ids_will_y) then ("-b " +  '"' + b_read_ids_will_y + '"') else ""}
  >>>
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
    a_read_ids_will_y: "A read IDs will be between x and y"
    b_read_ids_will_y: "B read IDs will be between x and y"
    ascii_ovl_file_input_dot: ""
  }
}