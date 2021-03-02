version 1.0

task BoltFastaFaidx {
  input {
    File? file_path
    String genie
    String fast_a
    String fa_idx
  }
  command <<<
    bolt fasta faidx \
      ~{genie} \
      ~{fast_a} \
      ~{fa_idx} \
      ~{if defined(file_path) then ("--filepath " +  '"' + file_path + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    file_path: "A bam file (*require)"
    genie: ""
    fast_a: ""
    fa_idx: ""
  }
  output {
    File out_stdout = stdout()
  }
}