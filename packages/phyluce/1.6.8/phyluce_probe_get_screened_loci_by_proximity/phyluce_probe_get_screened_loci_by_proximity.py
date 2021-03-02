from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int

Phyluce_Probe_Get_Screened_Loci_By_Proximity_V0_1_0 = CommandToolBuilder(tool="phyluce_probe_get_screened_loci_by_proximity", base_command=["phyluce_probe_get_screened_loci_by_proximity"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="The FASTA file of input sequences")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="The output FASTA file of filtered sequences")), ToolInput(tag="in_distance", input_type=String(optional=True), prefix="--distance", doc=InputDocumentation(doc="The minimum distance on which to filter")), ToolInput(tag="in_length", input_type=Int(optional=True), prefix="--length", doc=InputDocumentation(doc="The minimum length of sequences to filter"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="The output FASTA file of filtered sequences"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phyluce_Probe_Get_Screened_Loci_By_Proximity_V0_1_0().translate("wdl", allow_empty_container=True)

