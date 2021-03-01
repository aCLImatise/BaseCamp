from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Directory, Array, String, Boolean

Phyluce_Align_Move_Align_By_Conf_File_V0_1_0 = CommandToolBuilder(tool="phyluce_align_move_align_by_conf_file", base_command=["phyluce_align_move_align_by_conf_file"], inputs=[ToolInput(tag="in_conf", input_type=File(optional=True), prefix="--conf", doc=InputDocumentation(doc="The configuration file giving locus names")), ToolInput(tag="in_alignments", input_type=Directory(optional=True), prefix="--alignments", doc=InputDocumentation(doc="The input directory for the alignments")), ToolInput(tag="in_output", input_type=Directory(optional=True), prefix="--output", doc=InputDocumentation(doc="The output directory for the alignments")), ToolInput(tag="in_sections", input_type=Array(t=String(), optional=True), prefix="--sections", doc=InputDocumentation(doc="The sections of files to use as a filter (defaults to\nall)")), ToolInput(tag="in_opposite", input_type=Boolean(optional=True), prefix="--opposite", doc=InputDocumentation(doc="Move alignments based on what is NOT in the conf file")), ToolInput(tag="in_extension", input_type=String(optional=True), prefix="--extension", doc=InputDocumentation(doc="The extension of the files to move\n"))], outputs=[ToolOutput(tag="out_output", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="The output directory for the alignments"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phyluce_Align_Move_Align_By_Conf_File_V0_1_0().translate("wdl", allow_empty_container=True)

