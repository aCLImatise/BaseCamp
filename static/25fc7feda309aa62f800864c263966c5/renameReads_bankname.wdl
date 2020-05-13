version 1.0

task RenameReadsBankname {
  input {
    String? oldOldIidNewIid
  }
  command <<<
    renameReads bankname \
      ~{oldOldIidNewIid}
  >>>
}