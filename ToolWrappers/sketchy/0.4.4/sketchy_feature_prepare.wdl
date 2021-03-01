version 1.0

task SketchyFeaturePrepare {
  input {
    File? index
    String? drop
    File? prefix
  }
  command <<<
    sketchy feature prepare \
      ~{if defined(index) then ("--index " +  '"' + index + '"') else ""} \
      ~{if defined(drop) then ("--drop " +  '"' + drop + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    index: "Path to feature index input file  [required]"
    drop: "Comma separated string of columns to drop"
    prefix: "Prefix for prepared feature index output files"
  }
  output {
    File out_stdout = stdout()
  }
}