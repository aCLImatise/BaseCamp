from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Maffetch_V0_1_0 = CommandToolBuilder(tool="mafFetch", base_command=["mafFetch"], inputs=[ToolInput(tag="in_db", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_table", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_over_bed", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Maffetch_V0_1_0().translate("wdl", allow_empty_container=True)

