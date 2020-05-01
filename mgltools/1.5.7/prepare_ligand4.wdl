version 1.0

task PrepareLigand4.py {
  input {
    Boolean lL
  }
  command <<<
    prepare_ligand4.py \
      ~{true="-l" false="" lL}
  >>>
}