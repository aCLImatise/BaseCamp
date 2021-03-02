from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Primer3_Core_V0_1_0 = CommandToolBuilder(tool="primer3_core", base_command=["primer3_core"], inputs=[ToolInput(tag="in_format_output", input_type=Boolean(optional=True), prefix="--format_output", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Primer3_Core_V0_1_0().translate("wdl", allow_empty_container=True)

