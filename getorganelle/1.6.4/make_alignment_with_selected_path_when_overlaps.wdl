version 1.0

task MakeAlignmentWithSelectedPathWhenOverlaps.py {
  input {
    Int kK
    String sS
    String? pythonPython
    String? makeMakeAlignmentWithSelectedPathWhenOverlapSpy
    String? inputInputFiles
  }
  command <<<
    make_alignment_with_selected_path_when_overlaps.py \
      ~{pythonPython} \
      ~{if defined(kK) then ("-k " +  '"' + kK + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{makeMakeAlignmentWithSelectedPathWhenOverlapSpy} \
      ~{inputInputFiles}
  >>>
}