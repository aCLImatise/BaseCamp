from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Ariba_Flag_V0_1_0 = CommandToolBuilder(tool="ariba_flag", base_command=["ariba", "flag"], inputs=[ToolInput(tag="in_flag", input_type=String(), position=0, doc=InputDocumentation(doc="Flag to be translated (an integer)"))], outputs=[], container="quay.io/biocontainers/ariba:2.14.6--py36hf0b53f7_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ariba_Flag_V0_1_0().translate("wdl")

