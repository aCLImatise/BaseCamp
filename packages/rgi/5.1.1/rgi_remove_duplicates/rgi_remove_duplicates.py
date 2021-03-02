from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Rgi_Remove_Duplicates_V0_1_0 = CommandToolBuilder(tool="rgi_remove_duplicates", base_command=["rgi", "remove_duplicates"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="input fasta file")), ToolInput(tag="in_card_annotation", input_type=File(optional=True), prefix="--card_annotation", doc=InputDocumentation(doc="card_annotation input fasta file")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="output fasta file")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="debug mode"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="output fasta file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rgi_Remove_Duplicates_V0_1_0().translate("wdl", allow_empty_container=True)

