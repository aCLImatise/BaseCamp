version 1.0

task SketchyPlot {
  input {
    File? index
    File? key
    File? s_ssh
    File? ssh
    String? palette
    String? prefix
    String? format
    Boolean? verbose
    String evaluate
    String prediction
  }
  command <<<
    sketchy plot \
      ~{evaluate} \
      ~{prediction} \
      ~{if defined(index) then ("--index " +  '"' + index + '"') else ""} \
      ~{if defined(key) then ("--key " +  '"' + key + '"') else ""} \
      ~{if defined(s_ssh) then ("--sssh " +  '"' + s_ssh + '"') else ""} \
      ~{if defined(ssh) then ("--ssh " +  '"' + ssh + '"') else ""} \
      ~{if defined(palette) then ("--palette " +  '"' + palette + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    index: "Path to genotype feature index used in: sketchy"
    key: "Path to genotype feature index key for translation\\nfrom numeric.  [required]"
    s_ssh: "Path to sum of ranked sums shared hashes data file\\nfrom evaluation  [required]"
    ssh: "Path to sum of shared hashes data file from"
    palette: "Color palette for output plots [YlGnBu]"
    prefix: "Output prefix for all files [sketchy]"
    format: "Output image format [png]"
    verbose: "Verbose logging output [false]"
    evaluate: "[required]"
    prediction: "-st, --stable INTEGER  Stability parameter passed to: sketchy evaluate"
  }
  output {
    File out_stdout = stdout()
  }
}