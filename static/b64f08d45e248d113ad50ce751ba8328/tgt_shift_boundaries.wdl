version 1.0

task TgtShiftBoundaries.pyFile {
  input {
    String? e
    String? f
    String? o
    String tgt_shift_boundaries_do_tpy
  }
  command <<<
    tgt-shift-boundaries.py file \
      ~{tgt_shift_boundaries_do_tpy} \
      ~{if defined(e) then ("-e " +  '"' + e + '"') else ""} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    e: ""
    f: ""
    o: ""
    tgt_shift_boundaries_do_tpy: ""
  }
}