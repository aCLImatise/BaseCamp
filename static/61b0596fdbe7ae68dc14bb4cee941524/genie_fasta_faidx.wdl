version 1.0

task GenieFastaFaidx {
  input {
    String? file_path
    String? flags
  }
  command <<<
    genie fasta faidx \
      ~{flags} \
      ~{if defined(file_path) then ("--filepath " +  '"' + file_path + '"') else ""}
  >>>
  parameter_meta {
    file_path: "A bam file (*require)"
    flags: ""
  }
}