version 1.0

task HicQuickQC {
  input {
    File? restriction_cut_file
    Array[String] restriction_sequence
    String? sam_files
    Directory? qc_folder
    Int? lines
    String sam
    String files
    String two
  }
  command <<<
    hicQuickQC \
      ~{sam} \
      ~{files} \
      ~{two} \
      ~{if defined(restriction_cut_file) then ("--restrictionCutFile " +  '"' + restriction_cut_file + '"') else ""} \
      ~{if defined(restriction_sequence) then ("--restrictionSequence " +  '"' + restriction_sequence + '"') else ""} \
      ~{if defined(sam_files) then ("--samFiles " +  '"' + sam_files + '"') else ""} \
      ~{if defined(qc_folder) then ("--QCfolder " +  '"' + qc_folder + '"') else ""} \
      ~{if defined(lines) then ("--lines " +  '"' + lines + '"') else ""}
  >>>
  parameter_meta {
    restriction_cut_file: "file [BED file ...]"
    restriction_sequence: "Sequence of the restriction site, if multiple are\\nused, please list them space seperated. If a dangling\\nsequence is listed at the same time, please preserve\\nthe same order. (default: None)"
    sam_files: "sam files two sam files, -s two sam files two sam files\\nThe two PE alignment sam files to process. (default:\\nNone)"
    qc_folder: "Path of folder to save the quality control data of the\\nmatrix. The log files produced this way can be loaded\\ninto `hicQC` in order to compare the quality of\\nmultiple Hi-C libraries. (default: None)"
    lines: "Number of lines to consider for the QC test run.\\n(default: 1000000)"
    sam: ""
    files: ""
    two: ""
  }
  output {
    File out_stdout = stdout()
  }
}