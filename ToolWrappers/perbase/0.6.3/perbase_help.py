from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Perbase_Help_V0_1_0 = CommandToolBuilder(tool="perbase_help", base_command=["perbase", "help"], inputs=[ToolInput(tag="in_for", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_more", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_information", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_try", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/perbase:0.6.3--h35a96ae_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Perbase_Help_V0_1_0().translate("wdl")

