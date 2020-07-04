version 1.0

task SamToCollapsedGff.py {
  input {
    String convert
    String sam
    String to
    String collapsed
    String gff
    String format
    String sam_filename
  }
  command <<<
    sam_to_collapsed_gff.py \
      ~{convert} \
      ~{sam} \
      ~{to} \
      ~{collapsed} \
      ~{gff} \
      ~{format} \
      ~{sam_filename}
  >>>
  parameter_meta {
    convert: ""
    sam: ""
    to: ""
    collapsed: ""
    gff: ""
    format: ""
    sam_filename: ""
  }
}