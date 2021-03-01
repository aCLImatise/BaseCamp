from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Gomo_Highlight_V0_1_0 = CommandToolBuilder(tool="gomo_highlight", base_command=["gomo_highlight"], inputs=[ToolInput(tag="in_go_dag", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_gomo_xml", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gomo_Highlight_V0_1_0().translate("wdl", allow_empty_container=True)

