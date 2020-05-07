version 1.0

task Bam2gtf.py {
  input {
    String? bamBam
    String? outOut
  }
  command <<<
    bam2gtf.py \
      ~{bamBam} \
      ~{outOut}
  >>>
}