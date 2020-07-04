version 1.0

task MmseqsMaskbygff {
  input {
    Boolean? gff_type
    Boolean? id_offset
    Boolean? verbosity_level_nothing
  }
  command <<<
    mmseqs maskbygff \
      ~{true="--gff-type" false="" gff_type} \
      ~{true="--id-offset" false="" id_offset} \
      ~{true="-v" false="" verbosity_level_nothing}
  >>>
  parameter_meta {
    gff_type: "type in the GFF file to filter by                           "
    id_offset: "0               numeric ids in index file are offset by this value          "
    verbosity_level_nothing: "3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info"
  }
}