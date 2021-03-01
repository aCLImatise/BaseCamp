version 1.0

task FunannotateSpecies {
  input {
    String? d
    String? p
    String? a
    String? s
    String species_do_tpy
  }
  command <<<
    funannotate species \
      ~{species_do_tpy} \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""} \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""} \
      ~{if defined(a) then ("-a " +  '"' + a + '"') else ""} \
      ~{if defined(s) then ("-s " +  '"' + s + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    d: ""
    p: ""
    a: ""
    s: ""
    species_do_tpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}