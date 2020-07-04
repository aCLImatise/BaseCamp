version 1.0

task ContigtaxUpdateIdfile {
  input {
    String contig_tax
    String update
    String taxon_map
    String id_file
    String new_file
  }
  command <<<
    contigtax update idfile \
      ~{contig_tax} \
      ~{update} \
      ~{taxon_map} \
      ~{id_file} \
      ~{new_file}
  >>>
  parameter_meta {
    contig_tax: ""
    update: ""
    taxon_map: ""
    id_file: ""
    new_file: ""
  }
}