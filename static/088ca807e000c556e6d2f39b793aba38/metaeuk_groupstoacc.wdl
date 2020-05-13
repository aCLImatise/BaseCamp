version 1.0

task MetaeukGroupstoacc {
  input {
    Int threadsThreads
    Int vV
    String levyLevy
  }
  command <<<
    metaeuk groupstoacc \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(vV) then ("-v " +  '"' + vV + '"') else ""} \
      ~{if defined(levyLevy) then ("- Levy " +  '"' + levyLevy + '"') else ""}
  >>>
}