from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Bl_Pileup_Stats_V0_1_0 = CommandToolBuilder(tool="bl_pileup_stats", base_command=["bl-pileup-stats"], inputs=[ToolInput(tag="in_specify_input_file", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="specify the PILEUP input file")), ToolInput(tag="in_specify_output_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="specify the HIST output file")), ToolInput(tag="in_specify_min_default", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc="specify the min OVERLAP (default: 0)")), ToolInput(tag="in_pile_up_stats", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_specify_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_specify_output_file", type_hint=File()), doc=OutputDocumentation(doc="specify the HIST output file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bl_Pileup_Stats_V0_1_0().translate("wdl", allow_empty_container=True)

