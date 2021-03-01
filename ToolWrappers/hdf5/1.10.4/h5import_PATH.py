from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

H5Import_Path_V0_1_0 = CommandToolBuilder(tool="h5import_PATH", base_command=["h5import", "PATH"], inputs=[ToolInput(tag="in_h_five_import", input_type=Int(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_elp", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    H5Import_Path_V0_1_0().translate("wdl", allow_empty_container=True)

