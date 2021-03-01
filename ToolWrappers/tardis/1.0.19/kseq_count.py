from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Kseq_Count_V0_1_0 = CommandToolBuilder(tool="kseq_count", base_command=["kseq_count"], inputs=[ToolInput(tag="in_a", input_type=Boolean(optional=True), prefix="-a", doc=InputDocumentation(doc="")), ToolInput(tag="in_filename", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Kseq_Count_V0_1_0().translate("wdl", allow_empty_container=True)

