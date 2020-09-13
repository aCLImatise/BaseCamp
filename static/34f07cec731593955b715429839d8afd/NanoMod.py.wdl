version 1.0

task NanoModpy {
  input {
    String detect
    String simulate
    Int simul_at_two
    String downsampling
    String annotate
  }
  command <<<
    NanoMod_py \
      ~{detect} \
      ~{simulate} \
      ~{simul_at_two} \
      ~{downsampling} \
      ~{annotate}
  >>>
  parameter_meta {
    detect: "Detect nucleotide modifications from nanopore signal data"
    simulate: "Simulate with different percentage of modifications"
    simul_at_two: "Simulate with different percentage of modifications"
    downsampling: "Simulate with DownSampling from a folder"
    annotate: "Annotate a known sequence using each fast5"
  }
  output {
    File out_stdout = stdout()
  }
}