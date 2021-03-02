from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Check_Reference_V0_1_0 = CommandToolBuilder(tool="check_reference", base_command=["check_reference"], inputs=[ToolInput(tag="in_ref", input_type=String(optional=True), prefix="--ref", doc=InputDocumentation(doc="samtools reference sequence (required)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Check_Reference_V0_1_0().translate("wdl", allow_empty_container=True)

