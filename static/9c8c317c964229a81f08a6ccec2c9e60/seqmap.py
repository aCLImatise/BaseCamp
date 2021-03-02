from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File

Seqmap_V0_1_0 = CommandToolBuilder(tool="seqmap", base_command=["seqmap"], inputs=[ToolInput(tag="in_number_of_mismatches", input_type=Int(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_probe_fast_a_file_name", input_type=File(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_transcript_fast_a_file_name", input_type=File(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_file_name", input_type=File(), position=3, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_file_name", output_type=File(), selector=InputSelector(input_to_select="in_output_file_name", type_hint=File()), doc=OutputDocumentation(doc=""))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Seqmap_V0_1_0().translate("wdl", allow_empty_container=True)

