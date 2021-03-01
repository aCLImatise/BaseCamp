from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Cgpappendidstovcf_Pl_V0_1_0 = CommandToolBuilder(tool="cgpAppendIdsToVcf.pl", base_command=["cgpAppendIdsToVcf.pl"], inputs=[ToolInput(tag="in_file", input_type=Boolean(optional=True), prefix="--file", doc=InputDocumentation(doc="(-i)       The file to append IDs to.")), ToolInput(tag="in_outfile", input_type=File(optional=True), prefix="--outFile", doc=InputDocumentation(doc="(-o)       The output filename")), ToolInput(tag="in_id_start", input_type=Boolean(optional=True), prefix="--idstart", doc=InputDocumentation(doc="(-g)       Will set a sequential id generator to the given integer value. If not present will assign UUIDs to each variant.")), ToolInput(tag="in_o", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="")), ToolInput(tag="in_i", input_type=String(optional=True), prefix="-i", doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_outfile", output_type=File(optional=True), selector=InputSelector(input_to_select="in_outfile", type_hint=File()), doc=OutputDocumentation(doc="(-o)       The output filename"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cgpappendidstovcf_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

