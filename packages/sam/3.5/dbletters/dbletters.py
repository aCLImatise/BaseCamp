from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Dbletters_V0_1_0 = CommandToolBuilder(tool="dbletters", base_command=["dbletters"], inputs=[ToolInput(tag="in_db", input_type=File(optional=True), prefix="-db", doc=InputDocumentation(doc="[-db seq_filen]*     one or more sequence files")), ToolInput(tag="in_option", input_type=String(optional=True), prefix="-option", doc=InputDocumentation(doc="")), ToolInput(tag="in_run_name", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dbletters_V0_1_0().translate("wdl", allow_empty_container=True)

