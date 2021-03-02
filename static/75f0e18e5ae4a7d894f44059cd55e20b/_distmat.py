from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

_Distmat_V0_1_0 = CommandToolBuilder(tool="_distmat", base_command=["_distmat"], inputs=[ToolInput(tag="in_file", input_type=File(), position=0, doc=InputDocumentation(doc="Additional (Optional) qualifiers (* if not always prompted):"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Distmat_V0_1_0().translate("wdl", allow_empty_container=True)

