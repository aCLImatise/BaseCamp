from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Wgs2Ncbi_V0_1_0 = CommandToolBuilder(tool="wgs2ncbi", base_command=["wgs2ncbi"], inputs=[ToolInput(tag="in_ncbi", input_type=String(), position=0, doc=InputDocumentation(doc="SYNOPSIS\nUsage: wgs2ncbi [action] -conf [config file]"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Wgs2Ncbi_V0_1_0().translate("wdl", allow_empty_container=True)

