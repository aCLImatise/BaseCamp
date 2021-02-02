version 1.0

task Abyssindex {
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
    Int? sample
    Boolean? decompress
    Boolean? stdout
    Boolean? verbose
  }
  command <<<
    abyss_index \
      ~{if (both) then "--both" else ""} \
      ~{if (fai) then "--fai" else ""} \
      ~{if (fm) then "--fm" else ""} \
      ~{if (fa_two_bwt) then "--fa2bwt" else ""} \
      ~{if (bwt_two_fm) then "--bwt2fm" else ""} \
      ~{if defined(alphabet) then ("--alphabet " +  '"' + alphabet + '"') else ""} \
      ~{if (alpha) then "--alpha" else ""} \
      ~{if (dna) then "--dna" else ""} \
      ~{if (protein) then "--protein" else ""} \
      ~{if defined(sample) then ("--sample " +  '"' + sample + '"') else ""} \
      ~{if (decompress) then "--decompress" else ""} \
      ~{if (stdout) then "--stdout" else ""} \
      ~{if (verbose) then "--verbose" else ""}
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
  }
  output {
    File out_stdout = stdout()
  }
}