version 1.0

task ClassRun.py {
  input {
    String? bamBam
    String? outOut
  }
  command <<<
    class_run.py \
      ~{bamBam} \
      ~{outOut}
  >>>
}