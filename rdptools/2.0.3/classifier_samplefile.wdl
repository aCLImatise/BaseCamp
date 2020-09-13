version 1.0

task ClassifierSamplefile {
  input {
    String classify
    String lib_compare
    String loot
    String merge_detail
    String merge_count
    String rm_dup_seq
    String tax_a_sim
    String train
    String version
  }
  command <<<
    classifier samplefile \
      ~{classify} \
      ~{lib_compare} \
      ~{loot} \
      ~{merge_detail} \
      ~{merge_count} \
      ~{rm_dup_seq} \
      ~{tax_a_sim} \
      ~{train} \
      ~{version}
  >>>
  parameter_meta {
    classify: "- classify one or multiple samples"
    lib_compare: "- compare two samples"
    loot: "- leave one (sequence or taxon) out accuracy testing"
    merge_detail: "- merge classification detail result files to create a taxon assignment counts file"
    merge_count: "- merge multiple taxon assignment count files to into one count file"
    rm_dup_seq: "- remove identical or any sequence contained by another sequence"
    tax_a_sim: "- calculate and plot the similarities within taxa"
    train: "- retrain classifier"
    version: "- taxonomy versions of the pre-compiled training sets"
  }
  output {
    File out_stdout = stdout()
  }
}