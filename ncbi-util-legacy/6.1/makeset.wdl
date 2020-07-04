version 1.0

task Makeset {
  input {
    Boolean? bioseqsetrelease__optional
  }
  command <<<
    makeset \
      ~{true="-r" false="" bioseqsetrelease__optional}
  >>>
  parameter_meta {
    bioseqsetrelease__optional: "Bioseq-set.release [String]  Optional"
  }
}