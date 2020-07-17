version 1.0

task Dinosaur {
  input {
    String adv_params
    String outdir
    String out_name
  }
  command <<<
    dinosaur \
      ~{adv_params} \
      ~{outdir} \
      ~{out_name}
  >>>
  parameter_meta {
    adv_params: "path to adv param file"
    outdir: "output directory (by default same as input mzML)"
    out_name: "basename for output files (by default same as input mzML)"
  }
}