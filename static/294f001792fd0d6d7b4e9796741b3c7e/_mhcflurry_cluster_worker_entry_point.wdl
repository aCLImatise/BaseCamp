version 1.0

task Mhcflurryclusterworkerentrypoint {
  input {
    String? constant_data
    String? worker_data
    String? result_out
    String? error_out
    String? complete_dir
    String? input_serialization_method
    String? result_serialization_method
    String entry
    String point
    String for
    String cluster
    String workers
  }
  command <<<
    _mhcflurry_cluster_worker_entry_point \
      ~{entry} \
      ~{point} \
      ~{for} \
      ~{cluster} \
      ~{workers} \
      ~{if defined(constant_data) then ("--constant-data " +  '"' + constant_data + '"') else ""} \
      ~{if defined(worker_data) then ("--worker-data " +  '"' + worker_data + '"') else ""} \
      ~{if defined(result_out) then ("--result-out " +  '"' + result_out + '"') else ""} \
      ~{if defined(error_out) then ("--error-out " +  '"' + error_out + '"') else ""} \
      ~{if defined(complete_dir) then ("--complete-dir " +  '"' + complete_dir + '"') else ""} \
      ~{if defined(input_serialization_method) then ("--input-serialization-method " +  '"' + input_serialization_method + '"') else ""} \
      ~{if defined(result_serialization_method) then ("--result-serialization-method " +  '"' + result_serialization_method + '"') else ""}
  >>>
  parameter_meta {
    constant_data: ""
    worker_data: ""
    result_out: ""
    error_out: ""
    complete_dir: ""
    input_serialization_method: ""
    result_serialization_method: ""
    entry: ""
    point: ""
    for: ""
    cluster: ""
    workers: ""
  }
  output {
    File out_stdout = stdout()
  }
}