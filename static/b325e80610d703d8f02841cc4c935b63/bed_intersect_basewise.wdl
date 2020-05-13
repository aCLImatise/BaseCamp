version 1.0

task BedIntersectBasewise.pyBedFile2 {
  input {
    String? bedBedFile1
    String? bedBedFile2
  }
  command <<<
    bed_intersect_basewise.py bed_file_2 \
      ~{bedBedFile1} \
      ~{bedBedFile2}
  >>>
}