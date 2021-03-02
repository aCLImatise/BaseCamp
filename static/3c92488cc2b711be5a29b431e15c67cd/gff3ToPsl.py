from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

Gff3Topsl_V0_1_0 = CommandToolBuilder(tool="gff3ToPsl", base_command=["gff3ToPsl"], inputs=[ToolInput(tag="in_drop_q", input_type=Boolean(optional=True), prefix="-dropQ", doc=InputDocumentation(doc="drop record when query not found in queryChromSizes")), ToolInput(tag="in_dropt", input_type=Boolean(optional=True), prefix="-dropT", doc=InputDocumentation(doc="drop record when target not found in targetChromSizes")), ToolInput(tag="in_in_gff_three", input_type=Int(), position=0, doc=InputDocumentation(doc="GFF3 formatted file with Gap attribute in match records")), ToolInput(tag="in_out_dot_psl", input_type=String(), position=1, doc=InputDocumentation(doc="PSL formatted output"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gff3Topsl_V0_1_0().translate("wdl", allow_empty_container=True)

