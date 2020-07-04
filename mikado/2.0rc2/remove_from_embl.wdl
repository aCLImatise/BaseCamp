version 1.0

task RemoveFromEmbl.py {
  input {
    String? organism_to_excluded
    String? format
    String script
    String to
    String remove
    String sequences
    String specific
    String of
    String var_8
    String given
    String var_10
    String from
    String var_12
    String swissprot
    File file_dot
  }
  command <<<
    remove_from_embl.py \
      ~{script} \
      ~{to} \
      ~{remove} \
      ~{sequences} \
      ~{specific} \
      ~{of} \
      ~{var_8} \
      ~{given} \
      ~{var_10} \
      ~{from} \
      ~{var_12} \
      ~{swissprot} \
      ~{file_dot} \
      ~{if defined(organism_to_excluded) then ("--organism " +  '"' + organism_to_excluded + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""}
  >>>
  parameter_meta {
    organism_to_excluded: "Organism to be excluded"
    format: "Output format. Choices: fasta. Default: fasta."
    script: ""
    to: ""
    remove: ""
    sequences: ""
    specific: ""
    of: ""
    var_8: ""
    given: ""
    var_10: ""
    from: ""
    var_12: ""
    swissprot: ""
    file_dot: ""
  }
}