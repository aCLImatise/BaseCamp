version 1.0

task AlignmentToolsAlignNuclToProt {
  input {
    String? alignAlignNucleotideToProtein
    String? alignedAlignedProtseqS
    String? unalignedUnalignedNuclSeqs
    String? alignedAlignedNuclOut
    String? statsStatsOut
  }
  command <<<
    AlignmentTools align-nucl-to-prot \
      ~{alignAlignNucleotideToProtein} \
      ~{alignedAlignedProtseqS} \
      ~{unalignedUnalignedNuclSeqs} \
      ~{alignedAlignedNuclOut} \
      ~{statsStatsOut}
  >>>
}