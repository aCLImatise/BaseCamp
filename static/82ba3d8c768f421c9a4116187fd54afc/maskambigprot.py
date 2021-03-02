from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Maskambigprot_V0_1_0 = CommandToolBuilder(tool="maskambigprot", base_command=["maskambigprot"], inputs=[ToolInput(tag="in_feature", input_type=Boolean(optional=True), prefix="-feature", doc=InputDocumentation(doc="boolean    Use feature information"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Maskambigprot_V0_1_0().translate("wdl", allow_empty_container=True)

