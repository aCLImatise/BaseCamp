version 1.0

task HomGeneMapping {
  input {
    String? gt_fs
    String? hal_file
  }
  command <<<
    homGeneMapping \
      ~{if defined(gt_fs) then ("--gtfs " +  '"' + gt_fs + '"') else ""} \
      ~{if defined(hal_file) then ("--halfile " +  '"' + hal_file + '"') else ""}
  >>>
  parameter_meta {
    gt_fs: ""
    hal_file: ""
  }
}