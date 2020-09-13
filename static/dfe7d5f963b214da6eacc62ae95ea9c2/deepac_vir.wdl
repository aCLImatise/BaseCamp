version 1.0

task Deepacvir {
  input {
    Boolean? debug_no_eager
    Int? debug_tf
    Boolean? debug_device
    Boolean? force_cpu
    String? tpu
    Boolean? v
  }
  command <<<
    deepac_vir \
      ~{if (debug_no_eager) then "--debug-no-eager" else ""} \
      ~{if defined(debug_tf) then ("--debug-tf " +  '"' + debug_tf + '"') else ""} \
      ~{if (debug_device) then "--debug-device" else ""} \
      ~{if (force_cpu) then "--force-cpu" else ""} \
      ~{if defined(tpu) then ("--tpu " +  '"' + tpu + '"') else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    debug_no_eager: "Disable eager mode."
    debug_tf: "Set tensorflow debug info verbosity level. 0 = max, 3\\n= min. Default: 2 (errors); 3 for tests (muted)"
    debug_device: "Enable verbose device placement information."
    force_cpu: "Use a CPU even if GPUs are available."
    tpu: "TPU name: 'colab' for Google Colab, or name of your\\nTPU on GCE.\\n"
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}