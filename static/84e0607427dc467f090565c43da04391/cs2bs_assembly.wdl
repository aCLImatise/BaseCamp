version 1.0

task Cs2bsAssembly {
  input {
    String? fast_a
    String? sam
    String? l
    String? n
  }
  command <<<
    cs2bs_assembly \
      ~{if defined(fast_a) then ("-fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(sam) then ("-sam " +  '"' + sam + '"') else ""} \
      ~{if defined(l) then ("-l " +  '"' + l + '"') else ""} \
      ~{if defined(n) then ("-n " +  '"' + n + '"') else ""}
  >>>
  parameter_meta {
    fast_a: ""
    sam: ""
    l: ""
    n: ""
  }
}