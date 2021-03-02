from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Kpal_V0_1_0 = CommandToolBuilder(tool="kpal", base_command=["kpal"], inputs=[ToolInput(tag="in_show_programs_number", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="show program's version number and exit"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Kpal_V0_1_0().translate("wdl", allow_empty_container=True)

