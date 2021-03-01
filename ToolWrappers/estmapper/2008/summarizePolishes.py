from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Summarizepolishes_V0_1_0 = CommandToolBuilder(tool="summarizePolishes", base_command=["summarizePolishes"], inputs=[ToolInput(tag="in_p", input_type=File(optional=True), prefix="-p", doc=InputDocumentation(doc="")), ToolInput(tag="in_excel", input_type=Boolean(optional=True), prefix="-excel", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Summarizepolishes_V0_1_0().translate("wdl", allow_empty_container=True)

