version 1.0

task HicQuickQC {
  input {
    File? restriction_cut_file
    String? sam_files
    Directory? qc_folder
    Array[String] restriction_sequence
    Array[String] dangling_sequence
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
      ~{if defined(sam_files) then ("--samFiles " +  '"' + sam_files + '"') else ""} \
      ~{if defined(qc_folder) then ("--QCfolder " +  '"' + qc_folder + '"') else ""} \
      ~{if defined(restriction_sequence) then ("--restrictionSequence " +  '"' + restriction_sequence + '"') else ""} \
      ~{if defined(dangling_sequence) then ("--danglingSequence " +  '"' + dangling_sequence + '"') else ""} \
      ~{if defined(lines) then ("--lines " +  '"' + lines + '"') else ""}
  >>>
  parameter_meta {
    restriction_cut_file: "file [BED file ...]\\n--restrictionSequence RESTRICTIONSEQUENCE\\n[RESTRICTIONSEQUENCE ...] --danglingSequence\\nDANGLINGSEQUENCE [DANGLINGSEQUENCE ...] [--lines LINES]\\n[--help] [--version]"
    sam_files: "sam files two sam files, -s two sam files two sam files\\nThe two PE alignment sam files to process. (default:\\nNone)"
    qc_folder: "Path of folder to save the quality control data of the\\nmatrix. The log files produced this way can be loaded\\ninto `hicQC` in order to compare the quality of\\nmultiple Hi-C libraries. (default: None)"
    restriction_sequence: "Sequence of the restriction site, if multiple are\\nused, please list them space seperated. If a dangling\\nsequence is listed at the same time, please preserve\\nthe same order. (default: None)"
    dangling_sequence: "Sequence left by the restriction enzyme after cutting,\\nif multiple are used, please list them space seperated\\nand preserve the order. Each restriction enzyme\\nrecognizes a different DNA sequence and, after\\ncutting, they leave behind a specific \\\"sticky\\\" end or\\ndangling end sequence. For example, for HindIII the\\nrestriction site is AAGCTT and the dangling end is\\nAGCT. For DpnII, the restriction site and dangling end\\nsequence are the same: GATC. This information is\\neasily found on the description of the restriction\\nenzyme. The dangling sequence is used to classify and\\nreport reads whose 5' end starts with such sequence as\\ndangling-end reads. A significant portion of dangling-\\nend reads in a sample are indicative of a problem with\\nthe re-ligation step of the protocol. (default: None)"
    lines: "Number of lines to consider for the QC test run.\\n(default: 1000000)"
    sam: ""
    files: ""
    two: ""
  }
  output {
    File out_stdout = stdout()
  }
}