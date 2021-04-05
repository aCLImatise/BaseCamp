version 1.0

task Downloaddfampy {
  input {
    String? give_output_destination
  }
  command <<<
    download_dfam_py \
      ~{if defined(give_output_destination) then ("--output " +  '"' + give_output_destination + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/dfam:3.3--hdfd78af_0"
  }
  parameter_meta {
    give_output_destination: "Give an output destination /home/user/Dfam.hmm.gz"
  }
  output {
    File out_stdout = stdout()
  }
}