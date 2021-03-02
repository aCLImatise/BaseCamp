from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String, Boolean

Rgt_Tools_Py_Slicefasta_V0_1_0 = CommandToolBuilder(tool="rgt_tools.py_sliceFASTA", base_command=["rgt-tools.py", "sliceFASTA"], inputs=[ToolInput(tag="in_input_fasta_file", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="Input FASTA file")), ToolInput(tag="in_length_slice_sequence", input_type=Int(optional=True), prefix="-l", doc=InputDocumentation(doc="Length of the slice sequence")), ToolInput(tag="in_output_fasta_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Output FASTA file")), ToolInput(tag="in_the_start_position", input_type=String(optional=True), prefix="-p", doc=InputDocumentation(doc="The start position")), ToolInput(tag="in_reverse", input_type=Boolean(optional=True), prefix="--reverse", doc=InputDocumentation(doc="Reverse the sequence"))], outputs=[ToolOutput(tag="out_output_fasta_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_fasta_file", type_hint=File()), doc=OutputDocumentation(doc="Output FASTA file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rgt_Tools_Py_Slicefasta_V0_1_0().translate("wdl", allow_empty_container=True)

