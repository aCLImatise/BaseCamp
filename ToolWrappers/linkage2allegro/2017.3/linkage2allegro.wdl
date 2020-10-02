version 1.0

task Linkage2allegro {
  input {
    File? h_haplofiled_descentfile
  }
  command <<<
    linkage2allegro \
      ~{if defined(h_haplofiled_descentfile) then ("-l " +  '"' + h_haplofiled_descentfile + '"') else ""}
  >>>
  parameter_meta {
    h_haplofiled_descentfile: "-h haplofile\\n-d descentfile\\n"
  }
  output {
    File out_stdout = stdout()
  }
}