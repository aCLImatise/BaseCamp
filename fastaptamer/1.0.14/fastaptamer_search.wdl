version 1.0

task FastaptamerSearch {
  input {
    String? i
    String? o
    String? p
    String as_lashtslashgslashcslashu
    String purines_ag
    String pyrimidines_ct
    String weak_at
    String strong_gc
    String amino_ac
    String keto_gt
    String not_a
    String not_c
    String not_g
    String not_t
    String any_base_gap
  }
  command <<<
    fastaptamer_search \
      ~{as_lashtslashgslashcslashu} \
      ~{purines_ag} \
      ~{pyrimidines_ct} \
      ~{weak_at} \
      ~{strong_gc} \
      ~{amino_ac} \
      ~{keto_gt} \
      ~{not_a} \
      ~{not_c} \
      ~{not_g} \
      ~{not_t} \
      ~{any_base_gap} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""}
  >>>
  parameter_meta {
    i: ""
    o: ""
    p: ""
    as_lashtslashgslashcslashu: "single bases"
    purines_ag: "puRines (A/G)"
    pyrimidines_ct: "pYrimidines (C/T)"
    weak_at: "Weak (A/T)"
    strong_gc: "Strong (G/C)"
    amino_ac: "aMino (A/C)"
    keto_gt: "Keto (G/T)"
    not_a: "not A"
    not_c: "not C"
    not_g: "not G"
    not_t: "not T"
    any_base_gap: "aNy base (not a gap)"
  }
}