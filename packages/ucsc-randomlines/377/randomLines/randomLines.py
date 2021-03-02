from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Randomlines_V0_1_0 = CommandToolBuilder(tool="randomLines", base_command=["randomLines"], inputs=[ToolInput(tag="in_seed", input_type=String(optional=True), prefix="-seed", doc=InputDocumentation(doc="- Set seed used for randomizing, useful for debugging.")), ToolInput(tag="in_de_comment", input_type=Boolean(optional=True), prefix="-decomment", doc=InputDocumentation(doc="- remove blank lines and those starting with")), ToolInput(tag="in_in_file", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_count", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Randomlines_V0_1_0().translate("wdl", allow_empty_container=True)

