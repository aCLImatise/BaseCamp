from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int

Phyluce_Probe_Easy_Lastz_V0_1_0 = CommandToolBuilder(tool="phyluce_probe_easy_lastz", base_command=["phyluce_probe_easy_lastz"], inputs=[ToolInput(tag="in_target", input_type=File(optional=True), prefix="--target", doc=InputDocumentation(doc="The path to the target file (2bit/fasta)")), ToolInput(tag="in_query", input_type=File(optional=True), prefix="--query", doc=InputDocumentation(doc="The path to the query file (2bit/fasta)")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="The path to the output file")), ToolInput(tag="in_identity", input_type=String(optional=True), prefix="--identity", doc=InputDocumentation(doc="The minimum percent identity to require for a match")), ToolInput(tag="in_coverage", input_type=String(optional=True), prefix="--coverage", doc=InputDocumentation(doc="The minimum coverage (%) required for a match")), ToolInput(tag="in_min_match", input_type=Int(optional=True), prefix="--min_match", doc=InputDocumentation(doc="The minimum number of base pairs required for a match\n"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="The path to the output file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phyluce_Probe_Easy_Lastz_V0_1_0().translate("wdl", allow_empty_container=True)

