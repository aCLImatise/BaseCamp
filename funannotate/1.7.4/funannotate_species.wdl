version 1.0

task FunannotateSpecies {
  input {
    String? s
    String? a
    String? p
    String? d
    String species_do_tpy
  }
  command <<<
    funannotate species \
      ~{species_do_tpy} \
      ~{if defined(s) then ("-s " +  '"' + s + '"') else ""} \
      ~{if defined(a) then ("-a " +  '"' + a + '"') else ""} \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""} \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""}
  >>>
  parameter_meta {
    s: ""
    a: ""
    p: ""
    d: ""
    species_do_tpy: ""
  }
}