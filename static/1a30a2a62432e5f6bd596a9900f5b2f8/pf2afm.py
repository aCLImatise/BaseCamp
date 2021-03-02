from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Pf2Afm_V0_1_0 = CommandToolBuilder(tool="pf2afm", base_command=["pf2afm"], inputs=[ToolInput(tag="in_d_no_display", input_type=Boolean(optional=True), prefix="-dNODISPLAY", doc=InputDocumentation(doc="")), ToolInput(tag="in_gs", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pf2Afm_V0_1_0().translate("wdl", allow_empty_container=True)

