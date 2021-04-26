version 1.0

task BasenjiTrainHicpy {
  input {
    Boolean? augment_shifts
    Boolean? eval_data
    Boolean? metrics_sample
    Boolean? params
    Boolean? restore
    Boolean? train_data
  }
  command <<<
    basenji_train_hic_py \
      ~{if (augment_shifts) then "--augment_shifts" else ""} \
      ~{if (eval_data) then "--eval_data" else ""} \
      ~{if (metrics_sample) then "--metrics_sample" else ""} \
      ~{if (params) then "--params" else ""} \
      ~{if (restore) then "--restore" else ""} \
      ~{if (train_data) then "--train_data" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/basenji:0.5.1--pyhdfd78af_0"
  }
  parameter_meta {
    augment_shifts: ": Augment training with shifted sequences.\\n(default: '0')"
    eval_data: ": test tfrecord file\\n(default: '')"
    metrics_sample: ": Sample sequence positions for computing metrics.\\n(default: '1.0')\\n(a number)"
    params: ": Parameter JSON\\n(default: '')"
    restore: ": Restore model and continue training."
    train_data: ": train tfrecord file\\n(default: '')"
  }
  output {
    File out_stdout = stdout()
  }
}