version 1.0

task Ttree {
  input {
    Boolean aA
    Boolean rR
    Boolean pP
    Boolean nN
    Boolean vV
    String sS
    String dD
    String cC
    String lL
    File fF
    Boolean colourColour
    Boolean summarySummary
    String ignoreIgnore
    String copyCopy
    String linkLink
    String acceptAccept
    String dependDepend
    File dependDependFile
    Boolean dependDependDebug
    String suffixSuffix
    String binmodeBinmode
    String encodingEncoding
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
    File? filesFiles
  }
  command <<<
    ttree \
      ~{filesFiles} \
      ~{true="-a" false="" aA} \
      ~{true="-r" false="" rR} \
      ~{true="-p" false="" pP} \
      ~{true="-n" false="" nN} \
      ~{true="-v" false="" vV} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{true="--colour" false="" colourColour} \
      ~{true="--summary" false="" summarySummary} \
      ~{if defined(ignoreIgnore) then ("--ignore " +  '"' + ignoreIgnore + '"') else ""} \
      ~{if defined(copyCopy) then ("--copy " +  '"' + copyCopy + '"') else ""} \
      ~{if defined(linkLink) then ("--link " +  '"' + linkLink + '"') else ""} \
      ~{if defined(acceptAccept) then ("--accept " +  '"' + acceptAccept + '"') else ""} \
      ~{if defined(dependDepend) then ("--depend " +  '"' + dependDepend + '"') else ""} \
      ~{if defined(dependDependFile) then ("--depend_file " +  '"' + dependDependFile + '"') else ""} \
      ~{true="--depend_debug" false="" dependDependDebug} \
      ~{if defined(suffixSuffix) then ("--suffix " +  '"' + suffixSuffix + '"') else ""} \
      ~{if defined(binmodeBinmode) then ("--binmode " +  '"' + binmodeBinmode + '"') else ""} \
      ~{if defined(encodingEncoding) then ("--encoding " +  '"' + encodingEncoding + '"') else ""} \
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
      ~{if defined(templateTemplateModule) then ("--template_module " +  '"' + templateTemplateModule + '"') else ""}
  >>>
}