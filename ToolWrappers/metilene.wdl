version 1.0

task Metilene {
  input {
    Int? max_dist
    Int? max_seg
    Int? min_cpgs
    Float? min_meth_diff
    Int? threads
    Int? mode
    Int? mtc
    Int? group_a
    Int? group_b
    File? bed
    Int? min_noa
    Int? min_nob
    Int? seed
    Float? valley
    String data_input_file
    Float zero_dot_two_eight
  }
  command <<<
    metilene \
      ~{data_input_file} \
      ~{zero_dot_two_eight} \
      ~{if defined(max_dist) then ("--maxdist " +  '"' + max_dist + '"') else ""} \
      ~{if defined(max_seg) then ("--maxseg " +  '"' + max_seg + '"') else ""} \
      ~{if defined(min_cpgs) then ("--mincpgs " +  '"' + min_cpgs + '"') else ""} \
      ~{if defined(min_meth_diff) then ("--minMethDiff " +  '"' + min_meth_diff + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if defined(mtc) then ("--mtc " +  '"' + mtc + '"') else ""} \
      ~{if defined(group_a) then ("--groupA " +  '"' + group_a + '"') else ""} \
      ~{if defined(group_b) then ("--groupB " +  '"' + group_b + '"') else ""} \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{if defined(min_noa) then ("--minNoA " +  '"' + min_noa + '"') else ""} \
      ~{if defined(min_nob) then ("--minNoB " +  '"' + min_nob + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(valley) then ("--valley " +  '"' + valley + '"') else ""}
  >>>
  parameter_meta {
    max_dist: "maximum distance (default:300)"
    max_seg: "maximum segment length in case of memory\\nissues (default:-1)"
    min_cpgs: "minimum cpgs (default:10)"
    min_meth_diff: "minimum mean methylation difference\\n(default:0.100000)"
    threads: "number of threads (default:1)"
    mode: "number of method: 1: de-novo, 2: pre-defined\\nregions, 3: DMCs (default:1)"
    mtc: "method of multiple testing correction: 1:\\nBonferroni, 2: Benjamini-Hochberg (FDR)\\n(default:1)"
    group_a: "name of group A (default:\\\"g1\\\")"
    group_b: "name of group B (default:\\\"g2\\\")"
    bed: "bed-file for mode 2 containing pre-defined\\nregions; needs to be SORTED equally to the\\nDataInputFile (default:none)"
    min_noa: "minimal number of values in group A\\n(default:-1)"
    min_nob: "minimal number of values in group B\\n(default:-1)"
    seed: "set seed for random generator\\n(default:26061981)"
    valley: "valley filter (0.0 - 1.0) (default:0.700000)"
    data_input_file: "metilene - a tool for fast and sensitive detection of differential DNA methylation"
    zero_dot_two_eight: "[BUGS]"
  }
  output {
    File out_stdout = stdout()
  }
}