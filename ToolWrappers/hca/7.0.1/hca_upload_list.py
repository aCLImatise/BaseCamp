from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Hca_Upload_List_V0_1_0 = CommandToolBuilder(tool="hca_upload_list", base_command=["hca", "upload", "list"], inputs=[ToolInput(tag="in_log_level", input_type=String(optional=True), prefix="--log-level", doc=InputDocumentation(doc="")), ToolInput(tag="in_hca", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hca_Upload_List_V0_1_0().translate("wdl", allow_empty_container=True)

