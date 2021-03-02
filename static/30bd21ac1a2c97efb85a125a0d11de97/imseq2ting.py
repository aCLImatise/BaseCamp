from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, File

Imseq2Ting_V0_1_0 = CommandToolBuilder(tool="imseq2ting", base_command=["imseq2ting"], inputs=[ToolInput(tag="in_im_seq_folder", input_type=Directory(optional=True), prefix="--imseq_folder", doc=InputDocumentation(doc="Path to directory containing imseq repertoires as act-\nfile")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Path to output directory\n"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Path to output directory\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Imseq2Ting_V0_1_0().translate("wdl", allow_empty_container=True)

