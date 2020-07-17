version 1.0

task BoltFastaFaidx {
  input {
    String? file_path
    String genie
    String fast_a
    String fa_idx
    String? flags
  }
  command <<<
    bolt fasta faidx \
      ~{genie} \
      ~{fast_a} \
      ~{fa_idx} \
      ~{flags} \
      ~{if defined(file_path) then ("--filepath " +  '"' + file_path + '"') else ""}
  >>>
  parameter_meta {
    file_path: "A bam file (*require)"
    genie: ""
    fast_a: ""
    fa_idx: ""
    flags: ""
  }
}