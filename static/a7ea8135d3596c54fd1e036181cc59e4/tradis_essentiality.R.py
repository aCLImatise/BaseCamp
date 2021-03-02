from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Tradis_Essentiality_R_V0_1_0 = CommandToolBuilder(tool="tradis_essentiality.R", base_command=["tradis_essentiality.R"], inputs=[ToolInput(tag="in_data_dot_tab", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tradis_Essentiality_R_V0_1_0().translate("wdl", allow_empty_container=True)

