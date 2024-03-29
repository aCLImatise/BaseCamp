from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Fido_V0_1_0 = CommandToolBuilder(tool="Fido", base_command=["Fido"], inputs=[ToolInput(tag="in_graph_file", input_type=File(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_gamma", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_alpha", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_beta", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fido_V0_1_0().translate("wdl", allow_empty_container=True)

