version 1.0

task SketchyPlot {
  input {
    File? index
    File? key
    File? s_ssh
    File? ssh
    Int? stable
    String? palette
    String? prefix
    String? format
    Boolean? verbose
  }
  command <<<
    sketchy plot \
      ~{if defined(index) then ("--index " +  '"' + index + '"') else ""} \
      ~{if defined(key) then ("--key " +  '"' + key + '"') else ""} \
      ~{if defined(s_ssh) then ("--sssh " +  '"' + s_ssh + '"') else ""} \
      ~{if defined(ssh) then ("--ssh " +  '"' + ssh + '"') else ""} \
      ~{if defined(stable) then ("--stable " +  '"' + stable + '"') else ""} \
      ~{if defined(palette) then ("--palette " +  '"' + palette + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    index: "Path to genotype feature index used in: sketchy evaluate  [required]"
    key: "Path to genotype feature index key for translation from numeric.  [required]"
    s_ssh: "Path to sum of ranked sums shared hashes data file from evaluation  [required]"
    ssh: "Path to sum of shared hashes data file from prediction"
    stable: "Stability parameter passed to: sketchy evaluate"
    palette: "Color palette for output plots [YlGnBu]"
    prefix: "Output prefix for all files [sketchy]"
    format: "Output image format [png]"
    verbose: "Verbose logging output [false]"
  }
}