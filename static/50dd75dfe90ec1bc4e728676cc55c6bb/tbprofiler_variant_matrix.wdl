version 1.0

task TbprofilerVariantMatrix.py {
  input {
    String samplesSamples
    String dirDir
    String txtTxt
    String fastFastA
  }
  command <<<
    tbprofiler_variant_matrix.py \
      ~{if defined(samplesSamples) then ("--samples " +  '"' + samplesSamples + '"') else ""} \
      ~{if defined(dirDir) then ("--dir " +  '"' + dirDir + '"') else ""} \
      ~{if defined(txtTxt) then ("--txt " +  '"' + txtTxt + '"') else ""} \
      ~{if defined(fastFastA) then ("--fasta " +  '"' + fastFastA + '"') else ""}
  >>>
}