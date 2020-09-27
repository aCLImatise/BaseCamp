version 1.0

task DiriSampler {
  input {
    File? sampling_iterationsa_alphak
  }
  command <<<
    diri_sampler \
      ~{if defined(sampling_iterationsa_alphak) then ("-i " +  '"' + sampling_iterationsa_alphak + '"') else ""}
  >>>
  parameter_meta {
    sampling_iterationsa_alphak: "parameters\\n-j <sampling iterations>\\n-a <alpha>\\n-K <startvalue for number of clusters> not compat. with -k\\n-k <avg. number of reads in each startcluster> not compat. with -K\\n-t <history time>\\n-R <randomseed>"
  }
  output {
    File out_stdout = stdout()
  }
}