version 1.0

task SketchyFeatureMerge {
  input {
    File sketchSketch
    File featuresFeatures
    File keyKey
    String indexIndexColumn
    String mashMashColumn
    String prefixPrefix
    Boolean verboseVerbose
  }
  command <<<
    sketchy feature merge \
      ~{if defined(sketchSketch) then ("--sketch " +  '"' + sketchSketch + '"') else ""} \
      ~{if defined(featuresFeatures) then ("--features " +  '"' + featuresFeatures + '"') else ""} \
      ~{if defined(keyKey) then ("--key " +  '"' + keyKey + '"') else ""} \
      ~{if defined(indexIndexColumn) then ("--index_column " +  '"' + indexIndexColumn + '"') else ""} \
      ~{if defined(mashMashColumn) then ("--mash_column " +  '"' + mashMashColumn + '"') else ""} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}