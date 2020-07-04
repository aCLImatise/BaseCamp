version 1.0

task AbyssFixmate {
  input {
    Boolean? no_qname
    Boolean? qname
    Boolean? all
    Boolean? diff
    String? min_align
    String? same
    File? hist
    File? cov
    Boolean? verbose
    File? db
    String? library
    String? strain
    String? species
    String? option
  }
  command <<<
    abyss-fixmate \
      ~{option} \
      ~{true="--no-qname" false="" no_qname} \
      ~{true="--qname" false="" qname} \
      ~{true="--all" false="" all} \
      ~{true="--diff" false="" diff} \
      ~{if defined(min_align) then ("--min-align " +  '"' + min_align + '"') else ""} \
      ~{if defined(same) then ("--same " +  '"' + same + '"') else ""} \
      ~{if defined(hist) then ("--hist " +  '"' + hist + '"') else ""} \
      ~{if defined(cov) then ("--cov " +  '"' + cov + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(library) then ("--library " +  '"' + library + '"') else ""} \
      ~{if defined(strain) then ("--strain " +  '"' + strain + '"') else ""} \
      ~{if defined(species) then ("--species " +  '"' + species + '"') else ""}
  >>>
  parameter_meta {
    no_qname: "set the qname to * [default]"
    qname: "do not alter the qname"
    all: "print all alignments"
    diff: "print alignments that align to different contigs [default]"
    min_align: "the minimal alignment size [1]"
    same: "write properly-paired reads to this file"
    hist: "write the fragment size histogram to FILE"
    cov: "write the physical coverage to FILE"
    verbose: "display verbose output"
    db: "specify path of database repository in FILE"
    library: "specify library NAME for sqlite"
    strain: "specify strain NAME for sqlite"
    species: "specify species NAME for sqlite"
    option: ""
  }
}