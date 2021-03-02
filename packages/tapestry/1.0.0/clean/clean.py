from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Clean_V0_1_0 = CommandToolBuilder(tool="clean", base_command=["clean"], inputs=[ToolInput(tag="in_assembly", input_type=File(optional=True), prefix="--assembly", doc=InputDocumentation(doc="filename of assembly in FASTA format")), ToolInput(tag="in_csv", input_type=String(optional=True), prefix="--csv", doc=InputDocumentation(doc="Tapestry CSV output")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="filename of output contigs, default\nfiltered_assembly.fasta\n"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="filename of output contigs, default\nfiltered_assembly.fasta\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Clean_V0_1_0().translate("wdl", allow_empty_container=True)

