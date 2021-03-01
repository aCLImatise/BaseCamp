from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Erase_Annoying_Sequences_Py_V0_1_0 = CommandToolBuilder(tool="erase_annoying_sequences.py", base_command=["erase_annoying_sequences.py"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="Input FASTA file")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output FASTA file of negative sequences"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output FASTA file of negative sequences"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Erase_Annoying_Sequences_Py_V0_1_0().translate("wdl", allow_empty_container=True)

