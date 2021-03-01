from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Cooler_Ln_V0_1_0 = CommandToolBuilder(tool="cooler_ln", base_command=["cooler", "ln"], inputs=[ToolInput(tag="in_overwrite", input_type=Boolean(optional=True), prefix="--overwrite", doc=InputDocumentation(doc="Truncate and replace destination file if it already exists.")), ToolInput(tag="in_soft", input_type=Boolean(optional=True), prefix="--soft", doc=InputDocumentation(doc="Creates a soft link rather than a hard link if the source\nand destination file are the same. Otherwise, creates an\nexternal link. This type of link uses a path rather than a\npointer.")), ToolInput(tag="in_src_uri", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_dst_uri", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cooler_Ln_V0_1_0().translate("wdl", allow_empty_container=True)

