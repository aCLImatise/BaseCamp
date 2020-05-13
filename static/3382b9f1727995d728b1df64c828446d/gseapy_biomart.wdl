version 1.0

task GseapyBiomart {
  input {
    String fF
    String attributesAttributes
    String ofileOfile
    String datasetDataset
    String hostHost
    String martMart
    Boolean verboseVerbose
  }
  command <<<
    gseapy biomart \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(attributesAttributes) then ("--attributes " +  '"' + attributesAttributes + '"') else ""} \
      ~{if defined(ofileOfile) then ("--ofile " +  '"' + ofileOfile + '"') else ""} \
      ~{if defined(datasetDataset) then ("--dataset " +  '"' + datasetDataset + '"') else ""} \
      ~{if defined(hostHost) then ("--host " +  '"' + hostHost + '"') else ""} \
      ~{if defined(martMart) then ("--mart " +  '"' + martMart + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}