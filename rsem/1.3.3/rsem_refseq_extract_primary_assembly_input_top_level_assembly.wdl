version 1.0

task RsemRefseqExtractPrimaryAssemblyInputTopLevelAssembly.fna {
  input {
    String? outputOutputPrimaryAssemblyFna
  }
  command <<<
    rsem-refseq-extract-primary-assembly input_top_level_assembly.fna \
      ~{outputOutputPrimaryAssemblyFna}
  >>>
}