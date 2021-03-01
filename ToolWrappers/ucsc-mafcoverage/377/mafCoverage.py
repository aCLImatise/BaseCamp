from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Mafcoverage_V0_1_0 = CommandToolBuilder(tool="mafCoverage", base_command=["mafCoverage"], inputs=[ToolInput(tag="in_restrict", input_type=String(optional=True), prefix="-restrict", doc=InputDocumentation(doc="Restrict to parts in restrict.bed")), ToolInput(tag="in_count", input_type=Int(optional=True), prefix="-count", doc=InputDocumentation(doc="Number of matching species to count coverage. Default = 3")), ToolInput(tag="in_database", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mafcoverage_V0_1_0().translate("wdl", allow_empty_container=True)

