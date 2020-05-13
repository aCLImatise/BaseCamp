version 1.0

task SketchySurveyLink {
  input {
    File iidIid
    File directoryDirectory
    String columnColumn
    String extensionExtension
    Boolean symlinkSymlink
    File outdirOutdir
  }
  command <<<
    sketchy survey link \
      ~{if defined(iidIid) then ("--iid " +  '"' + iidIid + '"') else ""} \
      ~{if defined(directoryDirectory) then ("--directory " +  '"' + directoryDirectory + '"') else ""} \
      ~{if defined(columnColumn) then ("--column " +  '"' + columnColumn + '"') else ""} \
      ~{if defined(extensionExtension) then ("--extension " +  '"' + extensionExtension + '"') else ""} \
      ~{true="--symlink" false="" symlinkSymlink} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""}
  >>>
}