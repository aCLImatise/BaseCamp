from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Sketchy_List_V0_1_0 = CommandToolBuilder(tool="sketchy_list", base_command=["sketchy", "list"], inputs=[ToolInput(tag="in_path", input_type=File(optional=True), prefix="--path", doc=InputDocumentation(doc="Path to sketchy home directory [~/.sketchy]"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sketchy_List_V0_1_0().translate("wdl", allow_empty_container=True)

