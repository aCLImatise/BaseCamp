from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

To_Afg_V0_1_0 = CommandToolBuilder(tool="to_afg", base_command=["to_afg"], inputs=[ToolInput(tag="in_reads", input_type=File(optional=True), prefix="--reads", doc=InputDocumentation(doc="(required)\ninput fasta/fastq reads file")), ToolInput(tag="in_fast_q", input_type=Boolean(optional=True), prefix="--fastq", doc=InputDocumentation(doc="default: fasta format\nformat of input reads file")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="--out", doc=InputDocumentation(doc="output afg reads file")), ToolInput(tag="in_arguments", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="output afg reads file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    To_Afg_V0_1_0().translate("wdl", allow_empty_container=True)

