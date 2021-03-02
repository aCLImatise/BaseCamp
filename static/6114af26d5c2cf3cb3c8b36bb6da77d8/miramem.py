from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Miramem_V0_1_0 = CommandToolBuilder(tool="miramem", base_command=["miramem"], inputs=[ToolInput(tag="in_as", input_type=Boolean(optional=True), prefix="-AS", doc=InputDocumentation(doc=":amm, -AS:kpmf, -AS:mps")), ToolInput(tag="in_sk", input_type=Boolean(optional=True), prefix="-SK", doc=InputDocumentation(doc=":mhim, -SK:mchr (both runtime); -SK:mhpr (accuracy)")), ToolInput(tag="in_mira_talk_at_freelists_dot_org", input_type=String(), position=0, doc=InputDocumentation(doc="To report bugs or ask for features, please use the SourceForge ticketing"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Miramem_V0_1_0().translate("wdl", allow_empty_container=True)

