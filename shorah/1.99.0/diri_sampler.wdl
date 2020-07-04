version 1.0

task DiriSampler {
  input {
    File files
    String parameters
  }
  command <<<
    diri_sampler \
      ~{files} \
      ~{parameters}
  >>>
  parameter_meta {
    files: "-i <input data file>"
    parameters: "-j <sampling iterations> -a <alpha> -K <startvalue for number of clusters> not compat. with -k -k <avg. number of reads in each startcluster> not compat. with -K -t <history time> -R <randomseed>"
  }
}