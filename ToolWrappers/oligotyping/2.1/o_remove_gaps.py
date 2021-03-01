from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

O_Remove_Gaps_V0_1_0 = CommandToolBuilder(tool="o_remove_gaps", base_command=["o-remove-gaps"], inputs=[ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Path for output.\n")), ToolInput(tag="in_fast_a_file_path", input_type=String(), position=0, doc=InputDocumentation(doc="FASTA file that contains reads to be padded"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Path for output.\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    O_Remove_Gaps_V0_1_0().translate("wdl", allow_empty_container=True)

