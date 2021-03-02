from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Extractdes_V0_1_0 = CommandToolBuilder(tool="extractDEs", base_command=["extractDEs"], inputs=[ToolInput(tag="in_output", input_type=File(optional=True), prefix="-output", doc=InputDocumentation(doc="Write output to this file (STDOUT if omitted).")), ToolInput(tag="in_regions", input_type=Boolean(optional=True), prefix="-regions", doc=InputDocumentation(doc="the genomic regions, in BED format, corresponding to the input\nsequences for Zagros.")), ToolInput(tag="in_mapper", input_type=Boolean(optional=True), prefix="-mapper", doc=InputDocumentation(doc="the mapper used to map the reads (Default: rmap)")), ToolInput(tag="in_tech", input_type=Boolean(optional=True), prefix="-tech", doc=InputDocumentation(doc="the technology type used in the experiment (default iCLIP)")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="-verbose", doc=InputDocumentation(doc="print more run info (default: false")), ToolInput(tag="in_about", input_type=Boolean(optional=True), prefix="-about", doc=InputDocumentation(doc="print about message")), ToolInput(tag="in_mapped_reads", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Write output to this file (STDOUT if omitted)."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Extractdes_V0_1_0().translate("wdl", allow_empty_container=True)

