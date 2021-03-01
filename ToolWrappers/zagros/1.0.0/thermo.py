from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Thermo_V0_1_0 = CommandToolBuilder(tool="thermo", base_command=["thermo"], inputs=[ToolInput(tag="in_output", input_type=File(optional=True), prefix="-output", doc=InputDocumentation(doc="output file name (default: stdout)")), ToolInput(tag="in_chrom", input_type=Boolean(optional=True), prefix="-chrom", doc=InputDocumentation(doc="directory with chrom files (FASTA format)")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="-verbose", doc=InputDocumentation(doc="print more run info")), ToolInput(tag="in_about", input_type=Boolean(optional=True), prefix="-about", doc=InputDocumentation(doc="print about message")), ToolInput(tag="in_target_regions_slash_sequences", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="output file name (default: stdout)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Thermo_V0_1_0().translate("wdl", allow_empty_container=True)

