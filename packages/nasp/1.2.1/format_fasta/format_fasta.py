from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Format_Fasta_V0_1_0 = CommandToolBuilder(tool="format_fasta", base_command=["format_fasta"], inputs=[ToolInput(tag="in_input_fast_a", input_type=File(optional=True), prefix="--inputfasta", doc=InputDocumentation(doc="Path to input fasta.")), ToolInput(tag="in_output_fast_a", input_type=File(optional=True), prefix="--outputfasta", doc=InputDocumentation(doc="Path to output fasta.\n"))], outputs=[ToolOutput(tag="out_output_fast_a", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_fast_a", type_hint=File()), doc=OutputDocumentation(doc="Path to output fasta.\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Format_Fasta_V0_1_0().translate("wdl", allow_empty_container=True)

