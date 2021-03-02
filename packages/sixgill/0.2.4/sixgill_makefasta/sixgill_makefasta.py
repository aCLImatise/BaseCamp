from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int, Boolean

Sixgill_Makefasta_V0_1_0 = CommandToolBuilder(tool="sixgill_makefasta", base_command=["sixgill_makefasta"], inputs=[ToolInput(tag="in_out", input_type=File(optional=True), prefix="--out", doc=InputDocumentation(doc="output file")), ToolInput(tag="in_type", input_type=String(optional=True), prefix="--type", doc=InputDocumentation(doc="database type")), ToolInput(tag="in_missed_cleavages", input_type=String(optional=True), prefix="--missedcleavages", doc=InputDocumentation(doc="missed cleavages (for type peptide only)")), ToolInput(tag="in_min_peptide_length", input_type=Int(optional=True), prefix="--minpeptidelength", doc=InputDocumentation(doc="minimum peptide length (for type peptide only)")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Enable debug logging"))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="output file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sixgill_Makefasta_V0_1_0().translate("wdl", allow_empty_container=True)

