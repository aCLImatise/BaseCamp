from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Kmc_Dump_V0_1_0 = CommandToolBuilder(tool="kmc_dump", base_command=["kmc_dump"], inputs=[ToolInput(tag="in_ci", input_type=Boolean(optional=True), prefix="-ci", doc=InputDocumentation(doc="<value> - exclude k-mers occurring less than <value> times")), ToolInput(tag="in_cx", input_type=Boolean(optional=True), prefix="-cx", doc=InputDocumentation(doc="<value> - exclude k-mers occurring more of than <value> times")), ToolInput(tag="in_kmc_database", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_file", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Kmc_Dump_V0_1_0().translate("wdl", allow_empty_container=True)

