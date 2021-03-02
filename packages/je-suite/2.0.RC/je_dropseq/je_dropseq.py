from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File

Je_Dropseq_V0_1_0 = CommandToolBuilder(tool="je_dropseq", base_command=["je", "dropseq"], inputs=[ToolInput(tag="in_std_help", input_type=Boolean(optional=True), prefix="--stdhelp", doc=InputDocumentation(doc="Displays options specific to this tool AND options common to all Picard command line\ntools.")), ToolInput(tag="in_withqualityinreadnameboolean", input_type=String(), position=0, doc=InputDocumentation(doc="WITH_QUALITY_IN_READNAME=Boolean")), ToolInput(tag="in_like", input_type=String(), position=0, doc=InputDocumentation(doc="'...:ATGCAT333423212322:...' instead of '...:ATGCAT:...'")), ToolInput(tag="in_maxninteger", input_type=String(), position=0, doc=InputDocumentation(doc="MAX_N=Integer")), ToolInput(tag="in_becomes", input_type=String(), position=0, doc=InputDocumentation(doc="'@D3FCO8P1:178:C1WLBACXX:7:1101:1836:1965:1:N:0:BARCODE'")), ToolInput(tag="in_path_dot", input_type=File(), position=0, doc=InputDocumentation(doc="Required. "))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Je_Dropseq_V0_1_0().translate("wdl", allow_empty_container=True)

