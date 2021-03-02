version 1.0

task Hydraext {
  input {
    Boolean? config
    Boolean? out
    Boolean? mem
    Boolean? number_use_default
    Boolean? ms
    Boolean? lnk
    Boolean? is
    Boolean? li
    Boolean? use
    Boolean? max_mappings
    Boolean? crumbs
    String? mno
    String? mld
    Array[File] in
    String hydra
  }
  command <<<
    hydra_ext \
      ~{hydra} \
      ~{if (config) then "-config" else ""} \
      ~{if (out) then "-out" else ""} \
      ~{if (mem) then "-mem" else ""} \
      ~{if (number_use_default) then "-t" else ""} \
      ~{if (ms) then "-ms" else ""} \
      ~{if (lnk) then "-lnk" else ""} \
      ~{if (is) then "-is" else ""} \
      ~{if (li) then "-li" else ""} \
      ~{if (use) then "-use" else ""} \
      ~{if (max_mappings) then "-maxMappings" else ""} \
      ~{if (crumbs) then "--crumbs" else ""} \
      ~{if defined(mno) then ("-mno " +  '"' + mno + '"') else ""} \
      ~{if defined(mld) then ("-mld " +  '"' + mld + '"') else ""} \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/hydra-multi:0.5.4--py27h8b12597_0"
  }
  parameter_meta {
    config: "Configuration file.\\nCol 1. Sample Id (string)\\nCol 2. Mapping file (path/file)\\nCol 3. Expected insert size (integer)\\nCol 4. Variance (integer)\\nCol 5. Num. variances (integer)"
    out: "Stub for output files."
    mem: "Maximum memory to use. Integer in Gb, default is 8 for 8Gb."
    number_use_default: "Number of threads to use. Integer, default is 1."
    ms: "Minimum number of pairs required for variant to be called.\\nDefault: 2"
    lnk: "Maximum intrachromosomal distance allowed before a\\nvariant is considered to be between unlinked DNA segments.\\nDefault: 1000000 (i.e., 1Mb)"
    is: "Choose most likely variant (when a tie exists) based on\\nleast edit distance rather than size."
    li: "Combine +/+ and -/- mappings when screening for inversions.\\nThis increases sensitivity in low coverage."
    use: "Which mappings should be used for each pair?\\n\\\"best\\\"  Use the mappings with the least edit distance for each pair.\\nDefault.\\n\\\"all\\\"   Use all mappings for each pair.\\n<INT>   Use the best plus those within <INT> edit distance of best."
    max_mappings: "Maximum number of mappings in a cluster before Hydra will \\\"punt\\\"."
    crumbs: "Hydra will leave temporary files."
    mno: ""
    mld: ""
    in: ""
    hydra: ""
  }
  output {
    File out_stdout = stdout()
  }
}