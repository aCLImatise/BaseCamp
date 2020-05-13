version 1.0

task BuildTreeSingleStrain.py {
  input {
    Array[String]+ ifnIfnAlignments
    String logLogOfN
    String nprocsNprocs
    String bootstrapBootstrapRaXml
    Boolean verboseVerbose
  }
  command <<<
    build_tree_single_strain.py \
      ~{if defined(ifnIfnAlignments) then ("--ifn_alignments " +  '"' + ifnIfnAlignments + '"') else ""} \
      ~{if defined(logLogOfN) then ("--log_ofn " +  '"' + logLogOfN + '"') else ""} \
      ~{if defined(nprocsNprocs) then ("--nprocs " +  '"' + nprocsNprocs + '"') else ""} \
      ~{if defined(bootstrapBootstrapRaXml) then ("--bootstrap_raxml " +  '"' + bootstrapBootstrapRaXml + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}