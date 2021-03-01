from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Dottup_V0_1_0 = CommandToolBuilder(tool="dottup", base_command=["dottup"], inputs=[ToolInput(tag="in_word_size", input_type=Boolean(optional=True), prefix="-wordsize", doc=InputDocumentation(doc="integer    [10] Word size (Integer 2 or more)")), ToolInput(tag="in_stretch", input_type=Boolean(optional=True), prefix="-stretch", doc=InputDocumentation(doc="toggle     [N] Use non-proportional axes"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dottup_V0_1_0().translate("wdl", allow_empty_container=True)

