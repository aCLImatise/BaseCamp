version 1.0

task SliceFastaGff {
  input {
    String typeType
    String? sliceSliceFastA
    String? fastFastAFile
    String? gffGffFile
  }
  command <<<
    slice_fasta_gff \
      ~{sliceSliceFastA} \
      ~{if defined(typeType) then ("--type " +  '"' + typeType + '"') else ""} \
      ~{fastFastAFile} \
      ~{gffGffFile}
  >>>
}