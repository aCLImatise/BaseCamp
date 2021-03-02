from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Fatrans_V0_1_0 = CommandToolBuilder(tool="faTrans", base_command=["faTrans"], inputs=[ToolInput(tag="in_stop", input_type=String(optional=True), prefix="-stop", doc=InputDocumentation(doc="at first stop codon (otherwise puts in Z for stop codons)")), ToolInput(tag="in_offset", input_type=String(optional=True), prefix="-offset", doc=InputDocumentation(doc="start at a particular offset.")), ToolInput(tag="in_cds_upper", input_type=Boolean(optional=True), prefix="-cdsUpper", doc=InputDocumentation(doc="- cds is in upper case")), ToolInput(tag="in_in_dot_fa", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fatrans_V0_1_0().translate("wdl", allow_empty_container=True)

