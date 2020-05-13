version 1.0

task RenameReadsOldiid.newiid {
  input {
    String? bankBankName
    String? oldOldIidNewIid
  }
  command <<<
    renameReads oldiid.newiid \
      ~{bankBankName} \
      ~{oldOldIidNewIid}
  >>>
}