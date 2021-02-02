version 1.0

task Mcxsubs {
  input {
    File? imx
    String? dom
    File? tab
    String? tf
    Boolean? block
    Boolean? block_c
    Boolean? from_disk
    Boolean? skin_read
    Boolean? extend
    File? out
    Int? e_fac
    Int? d_fac
    Int? r_fac
    Int? cfac
    Boolean? rand_discard
    Boolean? rand_exclusive
    Boolean? rand_intersect
    Boolean? rand_merge
    Boolean? tag
    Int? tag_digits
    Boolean? help
    String options
    String sub_spec
  }
  command <<<
    mcxsubs \
      ~{options} \
      ~{sub_spec} \
      ~{if defined(imx) then ("-imx " +  '"' + imx + '"') else ""} \
      ~{if defined(dom) then ("-dom " +  '"' + dom + '"') else ""} \
      ~{if defined(tab) then ("-tab " +  '"' + tab + '"') else ""} \
      ~{if defined(tf) then ("-tf " +  '"' + tf + '"') else ""} \
      ~{if (block) then "--block" else ""} \
      ~{if (block_c) then "--blockc" else ""} \
      ~{if (from_disk) then "--from-disk" else ""} \
      ~{if (skin_read) then "--skin-read" else ""} \
      ~{if (extend) then "--extend" else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(e_fac) then ("-efac " +  '"' + e_fac + '"') else ""} \
      ~{if defined(d_fac) then ("-dfac " +  '"' + d_fac + '"') else ""} \
      ~{if defined(r_fac) then ("-rfac " +  '"' + r_fac + '"') else ""} \
      ~{if defined(cfac) then ("-cfac " +  '"' + cfac + '"') else ""} \
      ~{if (rand_discard) then "--rand-discard" else ""} \
      ~{if (rand_exclusive) then "--rand-exclusive" else ""} \
      ~{if (rand_intersect) then "--rand-intersect" else ""} \
      ~{if (rand_merge) then "--rand-merge" else ""} \
      ~{if (tag) then "--tag" else ""} \
      ~{if defined(tag_digits) then ("-tag-digits " +  '"' + tag_digits + '"') else ""} \
      ~{if (help) then "--help" else ""}
  >>>
  parameter_meta {
    imx: "matrix/graph file name"
    dom: "domain matrix (target for 'd' specs)"
    tab: "tab file name"
    tf: "first apply tf-spec to matrix"
    block: "use the block matrix induced by dom"
    block_c: "use the complement of block matrix"
    from_disk: "read submatrix directly from disk"
    skin_read: "only read skeleton matrix (domains, no entries)"
    extend: "read extended submatrices"
    out: "special purpose output file name"
    e_fac: "random selection edge factor"
    d_fac: "random selection domain factor"
    r_fac: "random selection row factor"
    cfac: "random selection column factor"
    rand_discard: "discard random selection"
    rand_exclusive: "discard regular selection"
    rand_intersect: "intersect random and regular selection"
    rand_merge: "join random and regular selection"
    tag: "output tagged matrices"
    tag_digits: "digits to print for tagged write"
    help: "print this help"
    options: ""
    sub_spec: ""
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}