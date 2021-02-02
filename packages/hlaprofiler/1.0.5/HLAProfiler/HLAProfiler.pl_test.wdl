version 1.0

task HLAProfilerplTest {
  input {
    Boolean? test
    Boolean? kraken_path
    Boolean? directory
    Boolean? output_directory
    String options
  }
  command <<<
    HLAProfiler_pl test \
      ~{options} \
      ~{if (test) then "-test" else ""} \
      ~{if (kraken_path) then "-kraken_path" else ""} \
      ~{if (directory) then "-directory" else ""} \
      ~{if (output_directory) then "-output_directory" else ""}
  >>>
  parameter_meta {
    test: "|t         Denotes the module to test\\nAvailable_tests:\\nall\\nSequenceFunctions\\nMergeDuplicates\\nHLATaxonomy\\nHLADistractome\\nTaxonomyDivisions\\nRunKraken\\nSimulateReads\\nReadCounter\\nDetermineProfile\\nPairPicker\\nAlleleRefiner"
    kraken_path: "|kp base directory of kraken installation. (default:base directory of path returned by `which kraken`)"
    directory: "|td   location of test files. (default:;'.')"
    output_directory: "|od    location of temporary output files. (default:;'.')"
    options: ""
  }
  output {
    File out_stdout = stdout()
  }
}