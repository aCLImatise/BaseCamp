version 1.0

task Fastqe {
  input {
    Int? min_len
    Boolean? scale
    Boolean? mean
    String? custom
    Boolean? bin
    Boolean? noe_moji
    Boolean? min
    Boolean? max
    File? write_output_outputfile
    Int? long
    File? log
    String fast_q_file
  }
  command <<<
    fastqe \
      ~{fast_q_file} \
      ~{if defined(min_len) then ("--minlen " +  '"' + min_len + '"') else ""} \
      ~{if (scale) then "--scale" else ""} \
      ~{if (mean) then "--mean" else ""} \
      ~{if defined(custom) then ("--custom " +  '"' + custom + '"') else ""} \
      ~{if (bin) then "--bin" else ""} \
      ~{if (noe_moji) then "--noemoji" else ""} \
      ~{if (min) then "--min" else ""} \
      ~{if (max) then "--max" else ""} \
      ~{if defined(write_output_outputfile) then ("--output " +  '"' + write_output_outputfile + '"') else ""} \
      ~{if defined(long) then ("--long " +  '"' + long + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/fastqe:0.2.6--pyh864c0ab_0"
  }
  parameter_meta {
    min_len: "Minimum length sequence to include in stats (default\\n0)"
    scale: "show relevant scale in output"
    mean: "show mean quality per position (DEFAULT)"
    custom: "use a mapping of custom emoji to quality in\\nCUSTOM_DICT (🐍🌴)"
    bin: "use binned scores (🚫💀💩⚠️ 😄😆😎😍)"
    noe_moji: "use mapping without emoji (▁▂▃▄▅▆▇█)"
    min: "show minimum quality per position"
    max: "show maximum quality per position"
    write_output_outputfile: "write output to OUTPUT_FILE instead of stdout"
    long: "enable long reads up to READ_LENGTH bp long"
    log: "record program progress in LOG_FILE"
    fast_q_file: "Input FASTQ files"
  }
  output {
    File out_stdout = stdout()
    File out_write_output_outputfile = "${in_write_output_outputfile}"
  }
}