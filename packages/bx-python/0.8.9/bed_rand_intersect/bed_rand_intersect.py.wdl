version 1.0

task BedRandIntersectpy {
  command <<<
    bed_rand_intersect_py
  >>>
  output {
    File out_stdout = stdout()
  }
}