version 1.0

task MmseqsMaskbygff {
  input {
    Boolean? gff_type
    Boolean? id_offset
    Boolean? verbosity_level_nothing
  }
  command <<<
    mmseqs maskbygff \
      ~{if (gff_type) then "--gff-type" else ""} \
      ~{if (id_offset) then "--id-offset" else ""} \
      ~{if (verbosity_level_nothing) then "-v" else ""}
  >>>
  parameter_meta {
    gff_type: "type in the GFF file to filter by"
    id_offset: "0               numeric ids in index file are offset by this value"
    verbosity_level_nothing: "3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info"
  }
  output {
    File out_stdout = stdout()
  }
}