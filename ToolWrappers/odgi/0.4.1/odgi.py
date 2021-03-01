from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Odgi_V0_1_0 = CommandToolBuilder(tool="odgi", base_command=["odgi"], inputs=[ToolInput(tag="in_command", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/odgi:0.4.1--py36hd181a71_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Odgi_V0_1_0().translate("wdl")

