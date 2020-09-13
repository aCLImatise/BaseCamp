version 1.0

task NextflowCloudCreate {
  input {
    Boolean? instance_count
    Boolean? image_id
    Boolean? instance_type
    Boolean? spot_price
    Boolean? region
    Boolean? profile
    Boolean? skip_launch_confirmation
    String cluster_name
  }
  command <<<
    nextflow cloud create \
      ~{cluster_name} \
      ~{if (instance_count) then "-instance-count" else ""} \
      ~{if (image_id) then "-image-id" else ""} \
      ~{if (instance_type) then "-instance-type" else ""} \
      ~{if (spot_price) then "-spot-price" else ""} \
      ~{if (region) then "-region" else ""} \
      ~{if (profile) then "-profile" else ""} \
      ~{if (skip_launch_confirmation) then "-y" else ""}
  >>>
  parameter_meta {
    instance_count: "Instances count"
    image_id: "Image ID"
    instance_type: "Instance type"
    spot_price: "Price for spot/preemptive instances"
    region: "The region to use. Overrides config/env settings."
    profile: "Configuration profile"
    skip_launch_confirmation: "Skip launch confirmation\\n"
    cluster_name: ""
  }
  output {
    File out_stdout = stdout()
  }
}