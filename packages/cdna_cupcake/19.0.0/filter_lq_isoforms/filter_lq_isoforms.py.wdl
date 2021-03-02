version 1.0

task FilterLqIsoformspy {
  input {
    Int? min_fl_count
    Float? min_exp_acc
    Boolean? is_fl_nc
    String fast_q_filename
    String output_filename
  }
  command <<<
    filter_lq_isoforms_py \
      ~{fast_q_filename} \
      ~{output_filename} \
      ~{if defined(min_fl_count) then ("--min_fl_count " +  '"' + min_fl_count + '"') else ""} \
      ~{if defined(min_exp_acc) then ("--min_exp_acc " +  '"' + min_exp_acc + '"') else ""} \
      ~{if (is_fl_nc) then "--is_flnc" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/cdna_cupcake:19.0.0--py37h97743b1_0"
  }
  parameter_meta {
    min_fl_count: "Minimum FL count (default: 2)."
    min_exp_acc: "Minimum predicted accuracy (default: 0.99)."
    is_fl_nc: "Input FASTQ is FLNC, not LQ"
    fast_q_filename: "LQ FASTQ filename (ex: lq_isoforms.fastq"
    output_filename: "Output FASTQ filename"
  }
  output {
    File out_stdout = stdout()
  }
}