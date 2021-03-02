from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Pbmerge_V0_1_0 = CommandToolBuilder(tool="pbmerge", base_command=["pbmerge"], inputs=[ToolInput(tag="in_str_output_bam", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="STR   Output BAM filename. Writes to stdout if not provided.")), ToolInput(tag="in_no_pbi", input_type=Boolean(optional=True), prefix="--no-pbi", doc=InputDocumentation(doc="Disables creation of PBI index file. PBI always disabled when writing to stdout.")), ToolInput(tag="in_input", input_type=String(), position=0, doc=InputDocumentation(doc="FILE  Input file(s). Maybe one of: DataSetXML, BAM file(s), or FOFN"))], outputs=[ToolOutput(tag="out_str_output_bam", output_type=File(optional=True), selector=InputSelector(input_to_select="in_str_output_bam", type_hint=File()), doc=OutputDocumentation(doc="STR   Output BAM filename. Writes to stdout if not provided."))], container="quay.io/biocontainers/pbbam:1.6.0--h5b7e6e0_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pbmerge_V0_1_0().translate("wdl")

