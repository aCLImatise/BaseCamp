version 1.0

task HicQuickQC {
  input {
    String? sam_files
    Directory? qc_folder
    String? restriction_sequence
    String? dangling_sequence
    String? lines
    String var_5
    File var_6
    String two
    String var_8
    File var_9
  }
  command <<<
    hicQuickQC \
      ~{var_5} \
      ~{var_6} \
      ~{two} \
      ~{var_8} \
      ~{var_9} \
      ~{if defined(sam_files) then ("--samFiles " +  '"' + sam_files + '"') else ""} \
      ~{if defined(qc_folder) then ("--QCfolder " +  '"' + qc_folder + '"') else ""} \
      ~{if defined(restriction_sequence) then ("--restrictionSequence " +  '"' + restriction_sequence + '"') else ""} \
      ~{if defined(dangling_sequence) then ("--danglingSequence " +  '"' + dangling_sequence + '"') else ""} \
      ~{if defined(lines) then ("--lines " +  '"' + lines + '"') else ""}
  >>>
  parameter_meta {
    sam_files: "sam files two sam files, -s two sam files two sam files The two PE alignment sam files to process. (default: None)"
    qc_folder: "Path of folder to save the quality control data of the matrix. The log files produced this way can be loaded into `hicQC` in order to compare the quality of multiple Hi-C libraries. (default: None)"
    restriction_sequence: "Sequence of the restriction site. It is highly recommended to set this parameter to get a good quality report. (default: None)"
    dangling_sequence: "Sequence left by the restriction enzyme after cutting. Each restriction enzyme recognizes a different DNA sequence and, after cutting, they leave behind a specific \"sticky\" end or dangling end sequence. For example, for HindIII the restriction site is AAGCTT and the dangling end is AGCT. For DpnII, the restriction site and dangling end sequence are the same: GATC. This information is easily found on the description of the restriction enzyme. The dangling sequence is used to classify and report reads whose 5' end starts with such sequence as dangling-end reads. A significant portion of dangling-end reads in a sample are indicative of a problem with the re-ligation step of the protocol. It is highly recommended to set this parameter to get a good quality report. (default: None)"
    lines: "Number of lines to consider for the QC test run. (default: 1000000)"
    var_5: ""
    var_6: ""
    two: ""
    var_8: ""
    var_9: ""
  }
}