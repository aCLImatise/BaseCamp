from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Meryl_V0_1_0 = CommandToolBuilder(tool="meryl", base_command=["meryl"], inputs=[ToolInput(tag="in__compute_parameters", input_type=Boolean(optional=True), prefix="-P", doc=InputDocumentation(doc="-- compute parameters")), ToolInput(tag="in__build_table", input_type=Boolean(optional=True), prefix="-B", doc=InputDocumentation(doc="-- build table")), ToolInput(tag="in__scan_table", input_type=Boolean(optional=True), prefix="-S", doc=InputDocumentation(doc="-- scan table")), ToolInput(tag="in___operations", input_type=Boolean(optional=True), prefix="-M", doc=InputDocumentation(doc="-- 'math' operations")), ToolInput(tag="in__dump_table", input_type=Boolean(optional=True), prefix="-D", doc=InputDocumentation(doc="-- dump table")), ToolInput(tag="in_personality", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_global", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Meryl_V0_1_0().translate("wdl", allow_empty_container=True)

