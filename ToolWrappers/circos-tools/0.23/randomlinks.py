from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Randomlinks_V0_1_0 = CommandToolBuilder(tool="randomlinks", base_command=["randomlinks"], inputs=[ToolInput(tag="in_ruleset", input_type=String(optional=True), prefix="-ruleset", doc=InputDocumentation(doc="")), ToolInput(tag="in_karyotype", input_type=File(optional=True), prefix="-karyotype", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Randomlinks_V0_1_0().translate("wdl", allow_empty_container=True)

