from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Gcov2Perl_V0_1_0 = CommandToolBuilder(tool="gcov2perl", base_command=["gcov2perl"], inputs=[ToolInput(tag="in_db", input_type=String(optional=True), prefix="-db", doc=InputDocumentation(doc="")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="")), ToolInput(tag="in_i", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gcov2Perl_V0_1_0().translate("wdl", allow_empty_container=True)

