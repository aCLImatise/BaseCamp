version 1.0

task VerifyNetworkpy {
  input {
    Int? km_er
    Int? n_feature
    Float? sd
    Int? stride
    Int? win_len
  }
  command <<<
    verify_network_py \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""} \
      ~{if defined(n_feature) then ("--nfeature " +  '"' + n_feature + '"') else ""} \
      ~{if defined(sd) then ("--sd " +  '"' + sd + '"') else ""} \
      ~{if defined(stride) then ("--stride " +  '"' + stride + '"') else ""} \
      ~{if defined(win_len) then ("--winlen " +  '"' + win_len + '"') else ""}
  >>>
  parameter_meta {
    km_er: "Length of kmer (default: 5)"
    n_feature: "Number of features to input to network (default: 4)"
    sd: "Standard deviation to initialise with (default: 0.5)"
    stride: "Stride of model or None for no stride (default: 1)"
    win_len: "Length of window over data (default: 3)"
  }
  output {
    File out_stdout = stdout()
  }
}