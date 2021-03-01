from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Bedparse_Specifications_V0_1_0 = CommandToolBuilder(tool="bedparse_specifications", base_command=["bedparse", "specifications"], inputs=[ToolInput(tag="in_bed_parse", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bedparse_Specifications_V0_1_0().translate("wdl", allow_empty_container=True)

