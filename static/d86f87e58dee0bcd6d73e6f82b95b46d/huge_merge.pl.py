from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Huge_Merge_Pl_V0_1_0 = CommandToolBuilder(tool="huge_merge.pl", base_command=["huge-merge.pl"], inputs=[ToolInput(tag="in_keep", input_type=Boolean(optional=True), prefix="--keep", doc=InputDocumentation(doc="Keep the unmerged files.\nThe unmerged files are deleted by default.")), ToolInput(tag="in_source_dir", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Huge_Merge_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

