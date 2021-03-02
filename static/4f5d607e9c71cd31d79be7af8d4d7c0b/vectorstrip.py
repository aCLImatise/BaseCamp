from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Vectorstrip_V0_1_0 = CommandToolBuilder(tool="vectorstrip", base_command=["vectorstrip"], inputs=[ToolInput(tag="in_mismatch", input_type=Boolean(optional=True), prefix="-mismatch", doc=InputDocumentation(doc="integer    [10] Max allowed % mismatch (Any integer\nvalue)")), ToolInput(tag="in_all_sequences", input_type=Boolean(optional=True), prefix="-allsequences", doc=InputDocumentation(doc="boolean    [N] Show all sequences in output"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vectorstrip_V0_1_0().translate("wdl", allow_empty_container=True)

