version 1.0

task AddProteinAnnotation.py {
  input {
    String? fast_a
    String? in
    String? out
    String var_3
    String script
    String to
    String annotate
    String var_7
    String csv
    String with
    String protein
    String descriptions
    String from
    String fast_a_dot
    String it
    String will
    String search
    String for
    String var_18
    String column
    String named
    String protein_name
  }
  command <<<
    add_protein_annotation.py \
      ~{var_3} \
      ~{script} \
      ~{to} \
      ~{annotate} \
      ~{var_7} \
      ~{csv} \
      ~{with} \
      ~{protein} \
      ~{descriptions} \
      ~{from} \
      ~{fast_a_dot} \
      ~{it} \
      ~{will} \
      ~{search} \
      ~{for} \
      ~{var_18} \
      ~{column} \
      ~{named} \
      ~{protein_name} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(in) then ("--in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""}
  >>>
  parameter_meta {
    fast_a: "A fasta file"
    in: "A mProphet output file"
    out: "A modified mProphet output file"
    var_3: ""
    script: ""
    to: ""
    annotate: ""
    var_7: ""
    csv: ""
    with: ""
    protein: ""
    descriptions: ""
    from: ""
    fast_a_dot: ""
    it: ""
    will: ""
    search: ""
    for: ""
    var_18: ""
    column: ""
    named: ""
    protein_name: ""
  }
}