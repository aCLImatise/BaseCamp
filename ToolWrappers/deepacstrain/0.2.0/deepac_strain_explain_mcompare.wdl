version 1.0

task DeepacstrainExplainMcompare {
  input {
    File? in_file_one
    File? in_file_two
    String? train_data
    Boolean? extensively
    Boolean? rc
    Boolean? shift
    Int? min_overlap
    Directory? out_dir
    String deep_ac
    String explain
    String m_compare
  }
  command <<<
    deepac_strain explain mcompare \
      ~{deep_ac} \
      ~{explain} \
      ~{m_compare} \
      ~{if defined(in_file_one) then ("--in_file1 " +  '"' + in_file_one + '"') else ""} \
      ~{if defined(in_file_two) then ("--in_file2 " +  '"' + in_file_two + '"') else ""} \
      ~{if defined(train_data) then ("--train_data " +  '"' + train_data + '"') else ""} \
      ~{if (extensively) then "--extensively" else ""} \
      ~{if (rc) then "--rc" else ""} \
      ~{if (shift) then "--shift" else ""} \
      ~{if defined(min_overlap) then ("--min_overlap " +  '"' + min_overlap + '"') else ""} \
      ~{if defined(out_dir) then ("--out_dir " +  '"' + out_dir + '"') else ""}
  >>>
  parameter_meta {
    in_file_one: "File containing all filter motifs in transfac format"
    in_file_two: "File containing all filter motifs in transfac format"
    train_data: "Training data (.npy), necessary to calculate\\nbackground GC content"
    extensively: "Compare every motif from --in_file1 with every motif\\nfrom --in_file2; default: compare only motifs with the\\nsame ID"
    rc: "Consider RC-complement of a motif"
    shift: "Shift motifs to find best alignment"
    min_overlap: "Minimal overlap between two motifs if motifs are\\nshifted to find the best alignment (--shift)"
    out_dir: "Output directory\\n"
    deep_ac: ""
    explain: ""
    m_compare: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_out_dir = "${in_out_dir}"
  }
}