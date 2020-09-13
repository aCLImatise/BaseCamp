version 1.0

task Abyssfixmatessq {
  input {
    Boolean? no_qname
    Boolean? qname
    Boolean? all
    Boolean? diff
    Int? min_align
    File? same
    File? hist
    File? cov
    Boolean? verbose
    File? db
    String? library
    String? strain
    String? species
    String abyss_fix_mate
  }
  command <<<
    abyss_fixmate_ssq \
      ~{abyss_fix_mate} \
      ~{if (no_qname) then "--no-qname" else ""} \
      ~{if (qname) then "--qname" else ""} \
      ~{if (all) then "--all" else ""} \
      ~{if (diff) then "--diff" else ""} \
      ~{if defined(min_align) then ("--min-align " +  '"' + min_align + '"') else ""} \
      ~{if defined(same) then ("--same " +  '"' + same + '"') else ""} \
      ~{if defined(hist) then ("--hist " +  '"' + hist + '"') else ""} \
      ~{if defined(cov) then ("--cov " +  '"' + cov + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(library) then ("--library " +  '"' + library + '"') else ""} \
      ~{if defined(strain) then ("--strain " +  '"' + strain + '"') else ""} \
      ~{if defined(species) then ("--species " +  '"' + species + '"') else ""}
  >>>
  parameter_meta {
    no_qname: "set the qname to * [default]"
    qname: "do not alter the qname"
    all: "print all alignments"
    diff: "print alignments that align to different\\ncontigs [default]"
    min_align: "the minimal alignment size [1]"
    same: "write properly-paired reads to this file"
    hist: "write the fragment size histogram to FILE"
    cov: "write the physical coverage to FILE"
    verbose: "display verbose output"
    db: "specify path of database repository in FILE"
    library: "specify library NAME for sqlite"
    strain: "specify strain NAME for sqlite"
    species: "specify species NAME for sqlite"
    abyss_fix_mate: ""
  }
  output {
    File out_stdout = stdout()
  }
}