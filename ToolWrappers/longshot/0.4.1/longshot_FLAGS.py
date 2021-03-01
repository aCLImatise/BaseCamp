from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Longshot_Flags_V0_1_0 = CommandToolBuilder(tool="longshot_FLAGS", base_command=["longshot", "FLAGS"], inputs=[ToolInput(tag="in_ref", input_type=String(optional=True), prefix="--ref", doc=InputDocumentation(doc="")), ToolInput(tag="in_bam", input_type=String(optional=True), prefix="--bam", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Longshot_Flags_V0_1_0().translate("wdl", allow_empty_container=True)

