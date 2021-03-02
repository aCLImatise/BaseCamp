from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Easel_Filter_Maxid_V0_1_0 = CommandToolBuilder(tool="easel_filter_maxid", base_command=["easel", "filter", "maxid"], inputs=[ToolInput(tag="in_options", input_type=Boolean(optional=True), prefix="-options", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Easel_Filter_Maxid_V0_1_0().translate("wdl", allow_empty_container=True)

