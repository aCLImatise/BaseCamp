from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Cravat_Filter_Command_V0_1_0 = CommandToolBuilder(tool="cravat_filter_Command", base_command=["cravat-filter", "Command"], inputs=[ToolInput(tag="in_var_0", input_type=String(optional=True), prefix="-F", doc=InputDocumentation(doc="")), ToolInput(tag="in_var_1", input_type=File(optional=True), prefix="-f", doc=InputDocumentation(doc="")), ToolInput(tag="in_d", input_type=File(optional=True), prefix="-d", doc=InputDocumentation(doc="")), ToolInput(tag="in_cravat_filter", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/open-cravat:2.2.2--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cravat_Filter_Command_V0_1_0().translate("wdl")

