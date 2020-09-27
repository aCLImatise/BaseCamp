version 1.0

task TbprofilerAnalyseVariantspy {
  input {
    String? mutations
    String? var_meta
    String? samples
    String? dir
    String? db
    String? drugs
  }
  command <<<
    tbprofiler_analyse_variants_py \
      ~{if defined(mutations) then ("--mutations " +  '"' + mutations + '"') else ""} \
      ~{if defined(var_meta) then ("--meta " +  '"' + var_meta + '"') else ""} \
      ~{if defined(samples) then ("--samples " +  '"' + samples + '"') else ""} \
      ~{if defined(dir) then ("--dir " +  '"' + dir + '"') else ""} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(drugs) then ("--drugs " +  '"' + drugs + '"') else ""}
  >>>
  parameter_meta {
    mutations: "NGS Platform (default: None)"
    var_meta: "NGS Platform (default: None)"
    samples: "NGS Platform (default: None)"
    dir: "NGS Platform (default: results/)"
    db: "NGS Platform (default: tbdb)"
    drugs: "NGS Platform (default: None)"
  }
  output {
    File out_stdout = stdout()
  }
}