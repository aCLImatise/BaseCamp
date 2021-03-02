from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

_Yank_V0_1_0 = CommandToolBuilder(tool="_yank", base_command=["_yank"], inputs=[ToolInput(tag="in_new_file", input_type=Boolean(optional=True), prefix="-newfile", doc=InputDocumentation(doc="boolean    [N] Overwrite existing output file"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Yank_V0_1_0().translate("wdl", allow_empty_container=True)

