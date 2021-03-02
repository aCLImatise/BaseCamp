from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Removeduplicate_V0_1_0 = CommandToolBuilder(tool="removeDuplicate", base_command=["removeDuplicate"], inputs=[ToolInput(tag="in_gff_three", input_type=Boolean(optional=True), prefix="-gff3", doc=InputDocumentation(doc="")), ToolInput(tag="in_var_1", input_type=File(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_var_2", input_type=File(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Removeduplicate_V0_1_0().translate("wdl", allow_empty_container=True)

