version 1.0

task Jcast {
  input {
    String? out
    Int? read
    String? canonical
    Float? p_value
    String r_mats_folder
    String gtf_file
    String genome
  }
  command <<<
    jcast \
      ~{r_mats_folder} \
      ~{gtf_file} \
      ~{genome} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(read) then ("--read " +  '"' + read + '"') else ""} \
      ~{if defined(canonical) then ("--canonical " +  '"' + canonical + '"') else ""} \
      ~{if defined(p_value) then ("--pvalue " +  '"' + p_value + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/jcast:0.3.1--py_0"
  }
  parameter_meta {
    out: "name of the output files [default: psq_out]"
    read: "minimum read counts to consider [default: 1]"
    canonical: "write out canonical protein sequence even if\\ntranscriptslices are untranslatable [default: True]"
    p_value: "discard junctions with rMATS pvalue below this\\nthreshold [default: 0.01]\\n"
    r_mats_folder: "path to folder storing rMATS output"
    gtf_file: "path to Ensembl gtf file"
    genome: "path to genome file"
  }
  output {
    File out_stdout = stdout()
  }
}