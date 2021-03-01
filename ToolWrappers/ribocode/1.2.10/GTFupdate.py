from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Gtfupdate_V0_1_0 = CommandToolBuilder(tool="GTFupdate", base_command=["GTFupdate"], inputs=[ToolInput(tag="in_gtf_file", input_type=String(), position=0, doc=InputDocumentation(doc="optional arguments:"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gtfupdate_V0_1_0().translate("wdl", allow_empty_container=True)

