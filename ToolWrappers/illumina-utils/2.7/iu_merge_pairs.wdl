version 1.0

task Iumergepairs {
  input {
    Int? min_overlap_size
    File? o
  }
  command <<<
    iu_merge_pairs \
      ~{if defined(min_overlap_size) then ("--min-overlap-size " +  '"' + min_overlap_size + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    min_overlap_size: ""
    o: ""
  }
  output {
    File out_stdout = stdout()
    File out_o = "${in_o}"
  }
}