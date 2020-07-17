version 1.0

task AbyssIndex {
  input {
    Boolean? both
    Boolean? fai
    Boolean? fm
    Boolean? fa_two_bwt
    Boolean? bwt_two_fm
    String? alphabet
    Boolean? alpha
    Boolean? dna
    Boolean? protein
    String? sample
    Boolean? decompress
    Boolean? stdout
    Boolean? verbose
    String? option
  }
  command <<<
    abyss-index \
      ~{option} \
      ~{true="--both" false="" both} \
      ~{true="--fai" false="" fai} \
      ~{true="--fm" false="" fm} \
      ~{true="--fa2bwt" false="" fa_two_bwt} \
      ~{true="--bwt2fm" false="" bwt_two_fm} \
      ~{if defined(alphabet) then ("--alphabet " +  '"' + alphabet + '"') else ""} \
      ~{true="--alpha" false="" alpha} \
      ~{true="--dna" false="" dna} \
      ~{true="--protein" false="" protein} \
      ~{if defined(sample) then ("--sample " +  '"' + sample + '"') else ""} \
      ~{true="--decompress" false="" decompress} \
      ~{true="--stdout" false="" stdout} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    both: "build both FAI and FM indexes [default]"
    fai: "build a FAI index"
    fm: "build a FM index"
    fa_two_bwt: "build the BWT directly without the SA"
    bwt_two_fm: "build the FM index from the BWT"
    alphabet: "use the alphabet STRING [-ACGT]"
    alpha: "equivalent to -a' ABCDEFGHIJKLMNOPQRSTUVWXYZ'"
    dna: "equivalent to -a'-ACGT'"
    protein: "equivalent to -a'#*ACDEFGHIKLMNPQRSTVWY'"
    sample: "sample the suffix array [16]"
    decompress: "decompress the index FILE"
    stdout: "write output to standard output"
    verbose: "display verbose output"
    option: ""
  }
}