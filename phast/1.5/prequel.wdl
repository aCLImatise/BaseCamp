version 1.0

task Prequel {
  input {
    String refseqRefseq
    String gibbsGibbs
    String? optionsOptions
    String? alignmentAlignmentFa
    String? treeTreeMod
    String? outOutRoot
  }
  command <<<
    prequel \
      ~{optionsOptions} \
      ~{if defined(refseqRefseq) then ("--refseq " +  '"' + refseqRefseq + '"') else ""} \
      ~{if defined(gibbsGibbs) then ("--gibbs " +  '"' + gibbsGibbs + '"') else ""} \
      ~{alignmentAlignmentFa} \
      ~{treeTreeMod} \
      ~{outOutRoot}
  >>>
}