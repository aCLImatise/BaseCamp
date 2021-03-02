from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Snpsift_Op_V0_1_0 = CommandToolBuilder(tool="SnpSift_op", base_command=["SnpSift", "op"], inputs=[ToolInput(tag="in_fields", input_type=String(optional=True), prefix="-fields", doc=InputDocumentation(doc=": Input VCF field names (comma separated list).")), ToolInput(tag="in_op", input_type=String(optional=True), prefix="-op", doc=InputDocumentation(doc=": Operator to be applied to the fields")), ToolInput(tag="in_outfield", input_type=String(optional=True), prefix="-outfield", doc=InputDocumentation(doc=": Ouptut field name.")), ToolInput(tag="in_kew", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_max_pop_freq", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_files", input_type=String(optional=True), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Snpsift_Op_V0_1_0().translate("wdl", allow_empty_container=True)

