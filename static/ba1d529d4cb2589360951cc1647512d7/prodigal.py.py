from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Prodigal_Py_V0_1_0 = CommandToolBuilder(tool="prodigal.py", base_command=["prodigal.py"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="Input FASTA file or dir containing fasta files")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Path to output folder\n"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Path to output folder\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Prodigal_Py_V0_1_0().translate("wdl", allow_empty_container=True)

