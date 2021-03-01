from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, Int, Directory

Tagdir2Hicsummary_Pl_File_V0_1_0 = CommandToolBuilder(tool="tagDir2HiCsummary.pl_FILE", base_command=["tagDir2HiCsummary.pl", "FILE"], inputs=[ToolInput(tag="in_juicer", input_type=File(optional=True), prefix="-juicer", doc=InputDocumentation(doc="(create *.hic file with juicer, '-juicer auto' places file in tagdir)")), ToolInput(tag="in_genome", input_type=File(optional=True), prefix="-genome", doc=InputDocumentation(doc="(genome is passed on to juicer_tools - if using a normal genome, i.e. hg38,\nmm10, etc. it's probably best to specify the genome code - if juicer_tools can recognize it.\nOtherwise specify the path to a chrom.sizes file instead of the genome code)")), ToolInput(tag="in_juicer_exe", input_type=Boolean(optional=True), prefix="-juicerExe", doc=InputDocumentation(doc="<'command to run juicer_tools'> (executable for running juicer_tools,\nby default assumes 'juicer_tools' is in the executable PATH)")), ToolInput(tag="in_juicer_opt", input_type=Boolean(optional=True), prefix="-juicerOpt", doc=InputDocumentation(doc="<'juicer options'> (command line options to pass to juicer, use quotes '...')")), ToolInput(tag="in_number_cpus_use", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="<#> (number of CPUs to use during sort command for juicer file creation, default: 1)")), ToolInput(tag="in_short", input_type=File(optional=True), prefix="-short", doc=InputDocumentation(doc="(output read pairs in 'short format' for processing with juicer,\nbut don't run juicer_tools. This file will not be sorted the way juicer wants it)\n")), ToolInput(tag="in_tagdirtwohicfiledotpl", input_type=Int(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_tag_directory", input_type=Directory(), position=1, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_short", output_type=File(optional=True), selector=InputSelector(input_to_select="in_short", type_hint=File()), doc=OutputDocumentation(doc="(output read pairs in 'short format' for processing with juicer,\nbut don't run juicer_tools. This file will not be sorted the way juicer wants it)\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tagdir2Hicsummary_Pl_File_V0_1_0().translate("wdl", allow_empty_container=True)

