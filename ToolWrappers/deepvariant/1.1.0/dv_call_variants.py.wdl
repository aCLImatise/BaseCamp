version 1.0

task DvCallVariantspy {
  input {
    Boolean? batch_size
    Boolean? checkpoint
    Boolean? config_string
    String? include_debug_info
    Directory? examples
    Boolean? execution_hardware
    Boolean? gcp_project
    Boolean? kmp_block_time
    Boolean? master
    Boolean? max_batches
    Boolean? model_name
    Boolean? num_mappers
    Boolean? num_readers
    File? outfile
    Boolean? tpu_name
    Boolean? tpu_zone
    String? sample
    String? model
  }
  command <<<
    dv_call_variants_py \
      ~{if (batch_size) then "--batch_size" else ""} \
      ~{if (checkpoint) then "--checkpoint" else ""} \
      ~{if (config_string) then "--config_string" else ""} \
      ~{if defined(include_debug_info) then ("--include_debug_info " +  '"' + include_debug_info + '"') else ""} \
      ~{if defined(examples) then ("--examples " +  '"' + examples + '"') else ""} \
      ~{if (execution_hardware) then "--execution_hardware" else ""} \
      ~{if (gcp_project) then "--gcp_project" else ""} \
      ~{if (kmp_block_time) then "--kmp_blocktime" else ""} \
      ~{if (master) then "--master" else ""} \
      ~{if (max_batches) then "--max_batches" else ""} \
      ~{if (model_name) then "--model_name" else ""} \
      ~{if (num_mappers) then "--num_mappers" else ""} \
      ~{if (num_readers) then "--num_readers" else ""} \
      ~{if (outfile) then "--outfile" else ""} \
      ~{if (tpu_name) then "--tpu_name" else ""} \
      ~{if (tpu_zone) then "--tpu_zone" else ""} \
      ~{if defined(sample) then ("--sample " +  '"' + sample + '"') else ""} \
      ~{if defined(model) then ("--model " +  '"' + model + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/deepvariant:1.1.0--py36hf3e76ba_0"
  }
  parameter_meta {
    batch_size: ": Number of candidate variant tensors to batch together during\\ninference. Larger batches use more memory but are more computational\\nefficient.\\n(default: '512')\\n(an integer)"
    checkpoint: ": Required. Path to the TensorFlow model checkpoint to use to\\nevaluate candidate variant calls."
    config_string: ": String representation of a tf.ConfigProto message, with\\ncomma-separated key: value pairs, such as \\\"allow_soft_placement: True\\\". The\\nvalue can itself be another message, such as \\\"gpu_options:\\n{per_process_gpu_memory_fraction: 0.5}\\\"."
    include_debug_info: "set to true."
    examples: "Example directory from make_examples"
    execution_hardware: ": When in cpu mode, call_variants will not place any ops\\non the GPU, even if one is available. In accelerator mode call_variants\\nvalidates that at least some hardware accelerator (GPU/TPU) was available\\nfor us. This option is primarily for QA purposes to allow users to validate\\ntheir accelerator environment is correctly configured. In auto mode, the\\ndefault, op placement is entirely left up to TensorFlow.  In tpu mode, use\\nand require TPU.\\n(default: 'auto')"
    gcp_project: ": Project name for the Cloud TPU-enabled project. If not\\nspecified, we will attempt to automatically detect the GCE project from\\nmetadata."
    kmp_block_time: ": Value to set the KMP_BLOCKTIME environment variable to for\\nefficient MKL inference. See\\nhttps://www.tensorflow.org/performance/performance_guide for more\\ninformation. The default value is 0, which provides the best performance in\\nour tests. Set this flag to \\\"\\\" to not set the variable.\\n(default: '0')"
    master: ": GRPC URL of the master (e.g. grpc://ip.address.of.tpu:8470). You\\nmust specify either this flag or --tpu_name."
    max_batches: ": Max. batches to evaluate. Defaults to all.\\n(an integer)"
    model_name: ": The name of the model architecture of --checkpoint.\\n(default: 'inception_v3')"
    num_mappers: ": Number of parallel mappers to create for examples.\\n(default: '48')\\n(an integer)"
    num_readers: ": Number of parallel readers to create for examples.\\n(default: '8')\\n(an integer)"
    outfile: ": Required. Destination path where we will write output candidate\\nvariants with additional likelihood information in TFRecord format of\\nCallVariantsOutput protos."
    tpu_name: ": Name of the Cloud TPU for Cluster Resolvers. You must specify\\neither this flag or --master. An empty value corresponds to no Cloud TPU.\\nSee https://www.tensorflow.org/api_docs/python/tf/distribute/cluster_resolve\\nr/TPUClusterResolver"
    tpu_zone: ": GCE zone where the Cloud TPU is located in. If not specified, we\\nwill attempt to automatically detect the GCE project from metadata."
    sample: "Sample name"
    model: "DeepVariant trained model to use, defaults to wgs"
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
  }
}