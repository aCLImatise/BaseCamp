version 1.0

task TbprofilerVariantMatrixpy {
  input {
    String? samples
    String? dir
    String? txt
    String? fast_a
  }
  command <<<
    tbprofiler_variant_matrix_py \
      ~{if defined(samples) then ("--samples " +  '"' + samples + '"') else ""} \
      ~{if defined(dir) then ("--dir " +  '"' + dir + '"') else ""} \
      ~{if defined(txt) then ("--txt " +  '"' + txt + '"') else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""}
  >>>
  parameter_meta {
    samples: "NGS Platform (default: None)"
    dir: "NGS Platform (default: results/)"
    txt: "NGS Platform (default: None)"
    fast_a: "NGS Platform (default: None)"
  }
  output {
    File out_stdout = stdout()
  }
}