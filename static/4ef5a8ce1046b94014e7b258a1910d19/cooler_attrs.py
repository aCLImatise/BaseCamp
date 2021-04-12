from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Cooler_Attrs_V0_1_0 = CommandToolBuilder(tool="cooler_attrs", base_command=["cooler", "attrs"], inputs=[ToolInput(tag="in_uri", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/cooler:0.8.11--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cooler_Attrs_V0_1_0().translate("wdl")

