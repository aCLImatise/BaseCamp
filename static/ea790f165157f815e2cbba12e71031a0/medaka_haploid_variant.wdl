version 1.0

task MedakaHaploidVariant {
  input {
    Boolean? fastx_input_basecalls
    Boolean? fasta_reference_sequence
    Directory? output_folder_default
    Boolean? medaka_model_default
    Boolean? perform_read_realignment
    Boolean? force_overwrite_outputs
    Boolean? number_threads_create
    Boolean? batchsize_controls_default
  }
  command <<<
    medaka_haploid_variant \
      ~{if (fastx_input_basecalls) then "-i" else ""} \
      ~{if (fasta_reference_sequence) then "-r" else ""} \
      ~{if (output_folder_default) then "-o" else ""} \
      ~{if (medaka_model_default) then "-m" else ""} \
      ~{if (perform_read_realignment) then "-s" else ""} \
      ~{if (force_overwrite_outputs) then "-f" else ""} \
      ~{if (number_threads_create) then "-t" else ""} \
      ~{if (batchsize_controls_default) then "-b" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/medaka:1.3.2--py38h130def0_0"
  }
  parameter_meta {
    fastx_input_basecalls: "fastx input basecalls (required)."
    fasta_reference_sequence: "fasta reference sequence (required)."
    output_folder_default: "output folder (default: medaka)."
    medaka_model_default: "medaka model, (default: r941_prom_variant_g360).\\nAvailable: r103_min_high_g345, r103_min_high_g360, r103_prom_high_g360, r103_prom_snp_g3210, r103_prom_variant_g3210, r10_min_high_g303, r10_min_high_g340, r941_min_fast_g303, r941_min_high_g303, r941_min_high_g330, r941_min_high_g340_rle, r941_min_high_g344, r941_min_high_g351, r941_min_high_g360, r941_prom_fast_g303, r941_prom_high_g303, r941_prom_high_g330, r941_prom_high_g344, r941_prom_high_g360, r941_prom_high_g4011, r941_prom_snp_g303, r941_prom_snp_g322, r941_prom_snp_g360, r941_prom_variant_g303, r941_prom_variant_g322, r941_prom_variant_g360.\\nA model named with 'variant' should be used with this program."
    perform_read_realignment: "Perform read realignment when annotating variants."
    force_overwrite_outputs: "Force overwrite of outputs (default will reuse existing outputs)."
    number_threads_create: "number of threads with which to create features (default: 1)."
    batchsize_controls_default: "batchsize, controls memory use (default: 100)."
  }
  output {
    File out_stdout = stdout()
    Directory out_output_folder_default = "${in_output_folder_default}"
  }
}