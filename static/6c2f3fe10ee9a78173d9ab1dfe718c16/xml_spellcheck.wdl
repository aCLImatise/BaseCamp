version 1.0

task XmlSpellcheck {
  input {
    String confConf
    String spellSpellChecker
    String backupBackupExtension
    Boolean attributesAttributes
    String excludeExcludeElements
    String includeIncludeElements
    String prettyPrettyPrint
    Boolean manMan
    File? filesFiles
  }
  command <<<
    xml_spellcheck \
      ~{filesFiles} \
      ~{if defined(confConf) then ("--conf " +  '"' + confConf + '"') else ""} \
      ~{if defined(spellSpellChecker) then ("--spellchecker " +  '"' + spellSpellChecker + '"') else ""} \
      ~{if defined(backupBackupExtension) then ("--backup-extension " +  '"' + backupBackupExtension + '"') else ""} \
      ~{true="--attributes" false="" attributesAttributes} \
      ~{if defined(excludeExcludeElements) then ("--exclude_elements " +  '"' + excludeExcludeElements + '"') else ""} \
      ~{if defined(includeIncludeElements) then ("--include_elements " +  '"' + includeIncludeElements + '"') else ""} \
      ~{if defined(prettyPrettyPrint) then ("--pretty_print " +  '"' + prettyPrettyPrint + '"') else ""} \
      ~{true="--man" false="" manMan}
  >>>
}