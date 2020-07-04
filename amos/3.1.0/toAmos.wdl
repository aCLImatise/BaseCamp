version 1.0

task ToAmos {
  input {
    Boolean? acc
    String? arachne
    String? sc_aff
    String? read_insert_information
    String? read_map_information
    String? pos
    Int? id
  }
  command <<<
    toAmos \
      ~{true="-acc" false="" acc} \
      ~{if defined(arachne) then ("-arachne " +  '"' + arachne + '"') else ""} \
      ~{if defined(sc_aff) then ("-scaff " +  '"' + sc_aff + '"') else ""} \
      ~{if defined(read_insert_information) then ("-i " +  '"' + read_insert_information + '"') else ""} \
      ~{if defined(read_map_information) then ("-map " +  '"' + read_map_information + '"') else ""} \
      ~{if defined(pos) then ("-pos " +  '"' + pos + '"') else ""} \
      ~{if defined(id) then ("-id " +  '"' + id + '"') else ""}
  >>>
  parameter_meta {
    acc: "- use accession numbers in FRG files"
    arachne: "- scaffold file in Arachne .links format"
    sc_aff: "- scaffold file in Bambus .scaff format"
    read_insert_information: "- read insert information"
    read_map_information: "- read map information"
    pos: "- TIGR-style .pos position file"
    id: "- start numbering AMOS internal IDs at this number"
  }
}