version 1.0

task MergeRanges {
  input {
    String? s
    String? c
    String? o
    String end_id
    String clear_range_file
  }
  command <<<
    mergeRanges \
      ~{end_id} \
      ~{clear_range_file} \
      ~{if defined(s) then ("-S " +  '"' + s + '"') else ""} \
      ~{if defined(c) then ("-c " +  '"' + c + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    s: ""
    c: ""
    o: ""
    end_id: ""
    clear_range_file: ""
  }
}