version 1.0

task Emblapivalidator {
  input {
    Boolean? assembly
    Boolean? de
    Boolean? file_formatoptional_values
    File? filter
    Boolean? fix
    Boolean? fix_diagnose
    Boolean? log_leveloptional_values
    Boolean? low_memory
    Boolean? min_gap_length
    Boolean? prefix
    Boolean? remote_run_ebioptional
    Int? skip
    Boolean? version
    Boolean? wrap
    String en_a_validator
    String files
  }
  command <<<
    embl_api_validator \
      ~{en_a_validator} \
      ~{files} \
      ~{if (assembly) then "-assembly" else ""} \
      ~{if (de) then "-de" else ""} \
      ~{if (file_formatoptional_values) then "-f" else ""} \
      ~{if defined(filter) then ("-filter " +  '"' + filter + '"') else ""} \
      ~{if (fix) then "-fix" else ""} \
      ~{if (fix_diagnose) then "-fix_diagnose" else ""} \
      ~{if (log_leveloptional_values) then "-l" else ""} \
      ~{if (low_memory) then "-lowmemory" else ""} \
      ~{if (min_gap_length) then "-min_gap_length" else ""} \
      ~{if (prefix) then "-prefix" else ""} \
      ~{if (remote_run_ebioptional) then "-r" else ""} \
      ~{if defined(skip) then ("-skip " +  '"' + skip + '"') else ""} \
      ~{if (version) then "-version" else ""} \
      ~{if (wrap) then "-wrap" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    assembly: "genome assembly entries (default: false)"
    de: "Additional Fix :Adds/Fixes DE line(optional) (default: false)"
    file_formatoptional_values: "File format(optional) Values:'embl','genbank','gff3','assembly' (default: embl)"
    filter: "Store entries in <prefix>_good.txt and <prefix>_bad.txt files in the working directory. Entries with errors are stored in the bad file and entries without errors are stored in the good file. (optional)(default :false)"
    fix: "Fixes entries in input files. Stores input files in 'original_files' folder. (optional) (default: false)"
    fix_diagnose: "Creates 'diagnose' folder in the current directory with original entries in <filename>_origin file and the fixed entries in <filename>_fixed file. Only fixed entries will be stored in these files.(optional)  (default: false)"
    log_leveloptional_values: "Log level(optional) Values : 0(Quiet), 1(Summary), 2(Verbose) (default: 1)"
    low_memory: "Runs in low memory usage mode. Writes error logs but does not show message summary(optional) (default: false)"
    min_gap_length: "minimum gap length to generate assembly_gap/gap features, use assembly flag to add assembly_gap features (default: 0)"
    prefix: "Adds prefix to report files"
    remote_run_ebioptional: "Remote, is this being run outside the EBI(optional) (default: false)"
    skip: ",<errorcode2>,... Ignore specified errors.(optional)(default:false)"
    version: "Displays implementation version of Jar (default: false)"
    wrap: "Turns on line wrapping in flat file writing (optional)  (default: false)"
    en_a_validator: ""
    files: ""
  }
  output {
    File out_stdout = stdout()
  }
}