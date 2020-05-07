version 1.0

task MedpyCreateEmptyVolumeByExample.py {
  input {
    Boolean vV
    Boolean dD
    Boolean fF
    String? exampleExample
    String? outputOutput
  }
  command <<<
    medpy_create_empty_volume_by_example.py \
      ~{exampleExample} \
      ~{true="-v" false="" vV} \
      ~{true="-d" false="" dD} \
      ~{true="-f" false="" fF} \
      ~{outputOutput}
  >>>
}