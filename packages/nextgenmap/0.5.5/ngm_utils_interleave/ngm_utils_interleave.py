from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean, String

Ngm_Utils_Interleave_V0_1_0 = CommandToolBuilder(tool="ngm_utils_interleave", base_command=["ngm-utils", "interleave"], inputs=[ToolInput(tag="in_m_one", input_type=File(optional=True), prefix="--m1", doc=InputDocumentation(doc="(required)  Upstream mates (FASTA/Q)")), ToolInput(tag="in_m_two", input_type=File(optional=True), prefix="--m2", doc=InputDocumentation(doc="(required)  Downstream mates (FASTA/Q)")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="(required)  Output file")), ToolInput(tag="in_unpaired", input_type=File(optional=True), prefix="--unpaired", doc=InputDocumentation(doc="Write reads without mate to this file.")), ToolInput(tag="in_delimiter", input_type=Int(optional=True), prefix="--delimiter", doc=InputDocumentation(doc="The character that precedes the 1 and 2 in the input files.")), ToolInput(tag="in_force", input_type=Boolean(optional=True), prefix="--force", doc=InputDocumentation(doc="Force finishing even if no pairs are found.")), ToolInput(tag="in_no_progress", input_type=Boolean(optional=True), prefix="--noprogress", doc=InputDocumentation(doc="Suppress progress output.")), ToolInput(tag="in_char", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="(required)  Output file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ngm_Utils_Interleave_V0_1_0().translate("wdl", allow_empty_container=True)

