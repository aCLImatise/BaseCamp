version 1.0

task Tpage {
  input {
    String defineDefine
    Boolean interpolateInterpolate
    Boolean anyAnyCase
    Boolean prePreChomp
    Boolean postPostChomp
    Boolean trimTrim
    Boolean evalEvalPerl
    Boolean loadLoadPerl
    Boolean absoluteAbsolute
    Boolean relativeRelative
    String includeIncludePath
    String prePreProcess
    String postPostProcess
    String processProcess
    String wrapperWrapper
    String defaultDefault
    String errorError
    String debugDebug
    String startStartTag
    String endEndTag
    String tagTagStyle
    String pluginPluginBase
    String compileCompileExt
    String compileCompileDir
    String perl5libPerl5lib
    String templateTemplateModule
    Int whileWhileMax
    File? filesFiles
  }
  command <<<
    tpage \
      ~{filesFiles} \
      ~{if defined(defineDefine) then ("--define " +  '"' + defineDefine + '"') else ""} \
      ~{true="--interpolate" false="" interpolateInterpolate} \
      ~{true="--anycase" false="" anyAnyCase} \
      ~{true="--pre_chomp" false="" prePreChomp} \
      ~{true="--post_chomp" false="" postPostChomp} \
      ~{true="--trim" false="" trimTrim} \
      ~{true="--eval_perl" false="" evalEvalPerl} \
      ~{true="--load_perl" false="" loadLoadPerl} \
      ~{true="--absolute" false="" absoluteAbsolute} \
      ~{true="--relative" false="" relativeRelative} \
      ~{if defined(includeIncludePath) then ("--include_path " +  '"' + includeIncludePath + '"') else ""} \
      ~{if defined(prePreProcess) then ("--pre_process " +  '"' + prePreProcess + '"') else ""} \
      ~{if defined(postPostProcess) then ("--post_process " +  '"' + postPostProcess + '"') else ""} \
      ~{if defined(processProcess) then ("--process " +  '"' + processProcess + '"') else ""} \
      ~{if defined(wrapperWrapper) then ("--wrapper " +  '"' + wrapperWrapper + '"') else ""} \
      ~{if defined(defaultDefault) then ("--default " +  '"' + defaultDefault + '"') else ""} \
      ~{if defined(errorError) then ("--error " +  '"' + errorError + '"') else ""} \
      ~{if defined(debugDebug) then ("--debug " +  '"' + debugDebug + '"') else ""} \
      ~{if defined(startStartTag) then ("--start_tag " +  '"' + startStartTag + '"') else ""} \
      ~{if defined(endEndTag) then ("--end_tag " +  '"' + endEndTag + '"') else ""} \
      ~{if defined(tagTagStyle) then ("--tag_style " +  '"' + tagTagStyle + '"') else ""} \
      ~{if defined(pluginPluginBase) then ("--plugin_base " +  '"' + pluginPluginBase + '"') else ""} \
      ~{if defined(compileCompileExt) then ("--compile_ext " +  '"' + compileCompileExt + '"') else ""} \
      ~{if defined(compileCompileDir) then ("--compile_dir " +  '"' + compileCompileDir + '"') else ""} \
      ~{if defined(perl5libPerl5lib) then ("--perl5lib " +  '"' + perl5libPerl5lib + '"') else ""} \
      ~{if defined(templateTemplateModule) then ("--template_module " +  '"' + templateTemplateModule + '"') else ""} \
      ~{if defined(whileWhileMax) then ("--while_max " +  '"' + whileWhileMax + '"') else ""}
  >>>
}