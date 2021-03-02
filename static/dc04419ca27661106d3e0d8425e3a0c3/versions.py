from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Versions_V0_1_0 = CommandToolBuilder(tool="versions", base_command=["versions"], inputs=[ToolInput(tag="in_target", input_type=String(), position=0, doc=InputDocumentation(doc="Target output file for version numbers"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Versions_V0_1_0().translate("wdl", allow_empty_container=True)

