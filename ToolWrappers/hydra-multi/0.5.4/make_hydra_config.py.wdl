version 1.0

task MakeHydraConfigpy {
  input {
    File? basic_input_sample
    Int? how_many_pairs
    Int? num_allowed_def
  }
  command <<<
    make_hydra_config_py \
      ~{if defined(basic_input_sample) then ("-i " +  '"' + basic_input_sample + '"') else ""} \
      ~{if defined(how_many_pairs) then ("-s " +  '"' + how_many_pairs + '"') else ""} \
      ~{if defined(num_allowed_def) then ("-n " +  '"' + num_allowed_def + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/hydra-multi:0.5.4--py27h8b12597_0"
  }
  parameter_meta {
    basic_input_sample: "Basic input sample file (sample_id[TAB]sample_file_path)"
    how_many_pairs: "How many pairs to sample (def. 100000)"
    num_allowed_def: "The num. of units of variation that should be allowed (def. 8)"
  }
  output {
    File out_stdout = stdout()
  }
}