from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Huge_Sort_Pl_V0_1_0 = CommandToolBuilder(tool="huge_sort.pl", base_command=["huge-sort.pl"], inputs=[ToolInput(tag="in_keep", input_type=Boolean(optional=True), prefix="--keep", doc=InputDocumentation(doc="keep the unsorted file\nThe default is to delete the unsorted file.")), ToolInput(tag="in_source", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Huge_Sort_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

