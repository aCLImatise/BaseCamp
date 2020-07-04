version 1.0

task Miraligner {
  input {
    Boolean? add
    Boolean? db
    Boolean? debug
    Boolean? format
    Boolean? freq
    Boolean? i
    Boolean? min_l
    Boolean? o
    Boolean? pre
    Boolean? three_letter_code
    Boolean? sub
    Boolean? trim
    Boolean? version_default_false
    String main_class
  }
  command <<<
    miraligner \
      ~{main_class} \
      ~{true="-add" false="" add} \
      ~{true="-db" false="" db} \
      ~{true="-debug" false="" debug} \
      ~{true="-format" false="" format} \
      ~{true="-freq" false="" freq} \
      ~{true="-i" false="" i} \
      ~{true="-minl" false="" min_l} \
      ~{true="-o" false="" o} \
      ~{true="-pre" false="" pre} \
      ~{true="-s" false="" three_letter_code} \
      ~{true="-sub" false="" sub} \
      ~{true="-trim" false="" trim} \
      ~{true="-v" false="" version_default_false}
  >>>
  parameter_meta {
    add: "nt allowed for addition processes Default: 3"
    db: "database"
    debug: "add verbosity Default: false"
    format: "format input Default: none"
    freq: "add freq information Default: true"
    i: "input"
    min_l: "minimum size Default: 16"
    o: "output"
    pre: "add reads mapping to precursor Default: false"
    three_letter_code: "three letter code for species"
    sub: "nt allowed for substitution processes Default: 1"
    trim: "nt allowed for trimming processes Default: 3"
    version_default_false: "version Default: false"
    main_class: ""
  }
}