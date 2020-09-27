version 1.0

task BcftoolsPolysomy {
  input {
    File? output_dir
    Float? peak_size
    Float? cn_penalty
    Float? fit_th
    Boolean? include_aa
    Float? min_fraction
    Float? peak_symmetry
    File file_dot_vcf
  }
  command <<<
    bcftools polysomy \
      ~{file_dot_vcf} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(peak_size) then ("--peak-size " +  '"' + peak_size + '"') else ""} \
      ~{if defined(cn_penalty) then ("--cn-penalty " +  '"' + cn_penalty + '"') else ""} \
      ~{if defined(fit_th) then ("--fit-th " +  '"' + fit_th + '"') else ""} \
      ~{if (include_aa) then "--include-aa" else ""} \
      ~{if defined(min_fraction) then ("--min-fraction " +  '"' + min_fraction + '"') else ""} \
      ~{if defined(peak_symmetry) then ("--peak-symmetry " +  '"' + peak_symmetry + '"') else ""}
  >>>
  parameter_meta {
    output_dir: "-r, --regions <region>         restrict to comma-separated list of regions\\n-R, --regions-file <file>      restrict to regions listed in a file\\n-s, --sample <name>            sample to analyze\\n-t, --targets <region>         similar to -r but streams rather than index-jumps\\n-T, --targets-file <file>      similar to -R but streams rather than index-jumps\\n-v, --verbose"
    peak_size: "minimum peak size (0-1, larger is stricter) [0.1]"
    cn_penalty: "penalty for increasing CN (0-1, larger is stricter) [0.7]"
    fit_th: "goodness of fit threshold (>0, smaller is stricter) [3.3]"
    include_aa: "include the AA peak in CN2 and CN3 evaluation"
    min_fraction: "minimum distinguishable fraction of aberrant cells [0.1]"
    peak_symmetry: "peak symmetry threshold (0-1, larger is stricter) [0.5]"
    file_dot_vcf: ""
  }
  output {
    File out_stdout = stdout()
  }
}