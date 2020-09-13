version 1.0

task Minimap2py {
  input {
    Int? preset_sr_mappb
    Int? mininum_number_minimizers
    Int? mininum_chaining_score
    Int? kmer_length
    Int? minimizer_window_length
    Int? band_width
    Boolean? output_cs_tag
    String ref_dot_fa
  }
  command <<<
    minimap2_py \
      ~{ref_dot_fa} \
      ~{if defined(preset_sr_mappb) then ("-x " +  '"' + preset_sr_mappb + '"') else ""} \
      ~{if defined(mininum_number_minimizers) then ("-n " +  '"' + mininum_number_minimizers + '"') else ""} \
      ~{if defined(mininum_chaining_score) then ("-m " +  '"' + mininum_chaining_score + '"') else ""} \
      ~{if defined(kmer_length) then ("-k " +  '"' + kmer_length + '"') else ""} \
      ~{if defined(minimizer_window_length) then ("-w " +  '"' + minimizer_window_length + '"') else ""} \
      ~{if defined(band_width) then ("-r " +  '"' + band_width + '"') else ""} \
      ~{if (output_cs_tag) then "-c" else ""}
  >>>
  parameter_meta {
    preset_sr_mappb: "preset: sr, map-pb, map-ont, asm5, asm10 or splice"
    mininum_number_minimizers: "mininum number of minimizers"
    mininum_chaining_score: "mininum chaining score"
    kmer_length: "k-mer length"
    minimizer_window_length: "minimizer window length"
    band_width: "band width"
    output_cs_tag: "output the cs tag"
    ref_dot_fa: ""
  }
  output {
    File out_stdout = stdout()
  }
}