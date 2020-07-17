version 1.0

task DownloadDfam.py {
  input {
    String? give_output_destination
  }
  command <<<
    download-dfam.py \
      ~{if defined(give_output_destination) then ("--output " +  '"' + give_output_destination + '"') else ""}
  >>>
  parameter_meta {
    give_output_destination: "Give an output destination /home/user/Dfam.hmm.gz"
  }
}