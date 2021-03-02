from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Directory

Crass_Assembler_V0_1_0 = CommandToolBuilder(tool="crass_assembler", base_command=["crass-assembler"], inputs=[ToolInput(tag="in_group", input_type=Boolean(optional=True), prefix="--group", doc=InputDocumentation(doc="<INT>   ID of the group that you want to assemble.  Give only the group number; For example\nif the group is G9, the argument to this option should just be the number 9")), ToolInput(tag="in_segments", input_type=Boolean(optional=True), prefix="--segments", doc=InputDocumentation(doc="<LIST>  A comma separated list of numbered segments to assemble from the specified group\nThe segment identifier is the number listed after the 'C' in the name of the spacer\nin the graph image of the CRISPR.  For example if a spacer's name is sp_6_3_C1, then\nthe segment is 1.")), ToolInput(tag="in_xml", input_type=File(optional=True), prefix="--xml", doc=InputDocumentation(doc="<FILE>  xml output file created by crass.  should be called crass.crispr in the crass output directory")), ToolInput(tag="in_in_dir", input_type=Boolean(optional=True), prefix="--inDir", doc=InputDocumentation(doc="<DIR>   input directory for the assembly. This will be the output directory from Crass [default: .]")), ToolInput(tag="in_outdir", input_type=Directory(optional=True), prefix="--outDir", doc=InputDocumentation(doc="<DIR>   name of the directory for the assembly output files"))], outputs=[ToolOutput(tag="out_xml", output_type=File(optional=True), selector=InputSelector(input_to_select="in_xml", type_hint=File()), doc=OutputDocumentation(doc="<FILE>  xml output file created by crass.  should be called crass.crispr in the crass output directory")), ToolOutput(tag="out_outdir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_outdir", type_hint=File()), doc=OutputDocumentation(doc="<DIR>   name of the directory for the assembly output files"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Crass_Assembler_V0_1_0().translate("wdl", allow_empty_container=True)

