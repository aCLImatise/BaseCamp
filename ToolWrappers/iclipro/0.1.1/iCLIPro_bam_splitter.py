from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, Int

Iclipro_Bam_Splitter_V0_1_0 = CommandToolBuilder(tool="iCLIPro_bam_splitter", base_command=["iCLIPro_bam_splitter"], inputs=[ToolInput(tag="in_output_folder_default", input_type=Directory(optional=True), prefix="-o", doc=InputDocumentation(doc="output folder (default is cwd - current working directory)")), ToolInput(tag="in_use_only_reads", input_type=Int(optional=True), prefix="-q", doc=InputDocumentation(doc="use only reads with minimum mapping quality (mapq) (0..100, default: 10)")), ToolInput(tag="in_read_len_groups", input_type=Int(optional=True), prefix="-g", doc=InputDocumentation(doc="read len groups (default: 'A:16-39,A1:16-25,A2:26-32,A3:33-39,B:42')")), ToolInput(tag="in_in_one_dot_bam", input_type=Int(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_folder_default", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_folder_default", type_hint=File()), doc=OutputDocumentation(doc="output folder (default is cwd - current working directory)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Iclipro_Bam_Splitter_V0_1_0().translate("wdl", allow_empty_container=True)

