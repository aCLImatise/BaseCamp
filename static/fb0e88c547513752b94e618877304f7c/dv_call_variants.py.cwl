class: CommandLineTool
id: dv_call_variants.py.cwl
inputs:
- id: in_batch_size
  doc: ": Number of candidate variant tensors to batch together during\ninference.\
    \ Larger batches use more memory but are more computational\nefficient.\n(default:\
    \ '512')\n(an integer)"
  type: boolean?
  inputBinding:
    prefix: --batch_size
- id: in_checkpoint
  doc: ": Required. Path to the TensorFlow model checkpoint to use to\nevaluate candidate\
    \ variant calls."
  type: boolean?
  inputBinding:
    prefix: --checkpoint
- id: in_config_string
  doc: ": String representation of a tf.ConfigProto message, with\ncomma-separated\
    \ key: value pairs, such as \"allow_soft_placement: True\". The\nvalue can itself\
    \ be another message, such as \"gpu_options:\n{per_process_gpu_memory_fraction:\
    \ 0.5}\"."
  type: boolean?
  inputBinding:
    prefix: --config_string
- id: in_include_debug_info
  doc: set to true.
  type: string?
  inputBinding:
    prefix: --include_debug_info
- id: in_examples
  doc: Example directory from make_examples
  type: Directory?
  inputBinding:
    prefix: --examples
- id: in_execution_hardware
  doc: ": When in cpu mode, call_variants will not place any ops\non the GPU, even\
    \ if one is available. In accelerator mode call_variants\nvalidates that at least\
    \ some hardware accelerator (GPU/TPU) was available\nfor us. This option is primarily\
    \ for QA purposes to allow users to validate\ntheir accelerator environment is\
    \ correctly configured. In auto mode, the\ndefault, op placement is entirely left\
    \ up to TensorFlow.  In tpu mode, use\nand require TPU.\n(default: 'auto')"
  type: boolean?
  inputBinding:
    prefix: --execution_hardware
- id: in_gcp_project
  doc: ": Project name for the Cloud TPU-enabled project. If not\nspecified, we will\
    \ attempt to automatically detect the GCE project from\nmetadata."
  type: boolean?
  inputBinding:
    prefix: --gcp_project
- id: in_kmp_block_time
  doc: ": Value to set the KMP_BLOCKTIME environment variable to for\nefficient MKL\
    \ inference. See\nhttps://www.tensorflow.org/performance/performance_guide for\
    \ more\ninformation. The default value is 0, which provides the best performance\
    \ in\nour tests. Set this flag to \"\" to not set the variable.\n(default: '0')"
  type: boolean?
  inputBinding:
    prefix: --kmp_blocktime
- id: in_master
  doc: ": GRPC URL of the master (e.g. grpc://ip.address.of.tpu:8470). You\nmust specify\
    \ either this flag or --tpu_name."
  type: boolean?
  inputBinding:
    prefix: --master
- id: in_max_batches
  doc: ": Max. batches to evaluate. Defaults to all.\n(an integer)"
  type: boolean?
  inputBinding:
    prefix: --max_batches
- id: in_model_name
  doc: ": The name of the model architecture of --checkpoint.\n(default: 'inception_v3')"
  type: boolean?
  inputBinding:
    prefix: --model_name
- id: in_num_mappers
  doc: ": Number of parallel mappers to create for examples.\n(default: '48')\n(an\
    \ integer)"
  type: boolean?
  inputBinding:
    prefix: --num_mappers
- id: in_num_readers
  doc: ": Number of parallel readers to create for examples.\n(default: '8')\n(an\
    \ integer)"
  type: boolean?
  inputBinding:
    prefix: --num_readers
- id: in_outfile
  doc: ": Required. Destination path where we will write output candidate\nvariants\
    \ with additional likelihood information in TFRecord format of\nCallVariantsOutput\
    \ protos."
  type: File?
  inputBinding:
    prefix: --outfile
- id: in_tpu_name
  doc: ": Name of the Cloud TPU for Cluster Resolvers. You must specify\neither this\
    \ flag or --master. An empty value corresponds to no Cloud TPU.\nSee https://www.tensorflow.org/api_docs/python/tf/distribute/cluster_resolve\n\
    r/TPUClusterResolver"
  type: boolean?
  inputBinding:
    prefix: --tpu_name
- id: in_tpu_zone
  doc: ": GCE zone where the Cloud TPU is located in. If not specified, we\nwill attempt\
    \ to automatically detect the GCE project from metadata."
  type: boolean?
  inputBinding:
    prefix: --tpu_zone
- id: in_sample
  doc: Sample name
  type: string?
  inputBinding:
    prefix: --sample
- id: in_model
  doc: DeepVariant trained model to use, defaults to wgs
  type: string?
  inputBinding:
    prefix: --model
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile
  doc: ": Required. Destination path where we will write output candidate\nvariants\
    \ with additional likelihood information in TFRecord format of\nCallVariantsOutput\
    \ protos."
  type: File?
  outputBinding:
    glob: $(inputs.in_outfile)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/deepvariant:1.1.0--py36hf3e76ba_0
cwlVersion: v1.1
baseCommand:
- dv_call_variants.py
