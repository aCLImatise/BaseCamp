from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Mash_Paste_V0_1_0 = CommandToolBuilder(tool="mash_paste", base_command=["mash", "paste"], inputs=[ToolInput(tag="in_input_files_lists", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc="Input files are lists of file names.")), ToolInput(tag="in_option", input_type=String(), position=0, doc=InputDocumentation(doc="Description (range) [default]"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mash_Paste_V0_1_0().translate("wdl", allow_empty_container=True)

