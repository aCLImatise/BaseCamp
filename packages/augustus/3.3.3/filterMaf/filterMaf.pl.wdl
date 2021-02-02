version 1.0

task FilterMafpl {
  input {
    Int? species
    Int? min_seq
    String? interval
  }
  command <<<
    filterMaf_pl \
      ~{if defined(species) then ("--species " +  '"' + species + '"') else ""} \
      ~{if defined(min_seq) then ("--min-seq " +  '"' + min_seq + '"') else ""} \
      ~{if defined(interval) then ("--interval " +  '"' + interval + '"') else ""}
  >>>
  parameter_meta {
    species: ",species2,...     a comma separated list of the species which shall be kept in the filtered alignment (at least 2 species,\\nby default all species are kept)"
    min_seq: "only blocks that contain at list N sequences are taken (N=2 by default)"
    interval: ":start-end          a genomic interval (seqID is equal to the first field of an 's' line in the alignment)"
  }
  output {
    File out_stdout = stdout()
  }
}