version 1.0

task RsemRefseqExtractPrimaryAssemblyOutputPrimaryAssembly.fna {
  input {
    String? inputInputTopLevelAssemblyFna
    String? outputOutputPrimaryAssemblyFna
  }
  command <<<
    rsem-refseq-extract-primary-assembly output_primary_assembly.fna \
      ~{inputInputTopLevelAssemblyFna} \
      ~{outputOutputPrimaryAssemblyFna}
  >>>
}