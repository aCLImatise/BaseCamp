from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Humann2_Humann1_Kegg_V0_1_0 = CommandToolBuilder(tool="humann2_humann1_kegg", base_command=["humann2_humann1_kegg"], inputs=[ToolInput(tag="in_var_0", input_type=Boolean(optional=True), prefix="--igenels", doc=InputDocumentation(doc="[IGENELS]")), ToolInput(tag="in_i_kegg_trans", input_type=Boolean(optional=True), prefix="--ikeggtrans", doc=InputDocumentation(doc="[IKEGGTRANS]")), ToolInput(tag="in_o", input_type=Boolean(optional=True), prefix="--o", doc=InputDocumentation(doc="[O]")), ToolInput(tag="in_var_3", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Humann2_Humann1_Kegg_V0_1_0().translate("wdl", allow_empty_container=True)

