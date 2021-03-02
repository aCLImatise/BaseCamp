from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, File

Bp_Mutate_Pl_V0_1_0 = CommandToolBuilder(tool="bp_mutate.pl", base_command=["bp_mutate.pl"], inputs=[ToolInput(tag="in_percent", input_type=String(optional=True), prefix="--percent", doc=InputDocumentation(doc="mutagenized")), ToolInput(tag="in_number", input_type=Boolean(optional=True), prefix="--number", doc=InputDocumentation(doc="Number of mutant sequences created")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output file (optional)")), ToolInput(tag="in_format", input_type=Boolean(optional=True), prefix="--format", doc=InputDocumentation(doc="Output format (default: fasta)")), ToolInput(tag="in_input", input_type=Boolean(optional=True), prefix="--input", doc=InputDocumentation(doc="Input file")), ToolInput(tag="in_bioperl_lat_bioperl_dot_org", input_type=String(), position=0, doc=InputDocumentation(doc="- General discussion"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output file (optional)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bp_Mutate_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

