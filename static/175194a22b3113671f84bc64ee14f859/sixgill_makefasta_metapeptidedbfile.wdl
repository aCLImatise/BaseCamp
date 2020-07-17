version 1.0

task SixgillMakefastaMetapeptidedbfile {
  input {
    String? out
    String? type
    String six_gill_make_fast_a
  }
  command <<<
    sixgill_makefasta metapeptidedbfile \
      ~{six_gill_make_fast_a} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""}
  >>>
  parameter_meta {
    out: ""
    type: ""
    six_gill_make_fast_a: ""
  }
}