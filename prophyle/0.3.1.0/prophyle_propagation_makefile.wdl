version 1.0

task ProphylePropagationMakefile.py {
  input {
    Int kK
  }
  command <<<
    prophyle_propagation_makefile.py \
      ~{if defined(kK) then ("-k " +  '"' + kK + '"') else ""}
  >>>
}