from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Vsnp_Group_Reporter_Py_V0_1_0 = CommandToolBuilder(tool="vsnp_group_reporter.py", base_command=["vsnp_group_reporter.py"], inputs=[ToolInput(tag="in_vcf", input_type=File(optional=True), prefix="--vcf", doc=InputDocumentation(doc="Required: vcf file")), ToolInput(tag="in_ref_option", input_type=String(optional=True), prefix="--ref_option", doc=InputDocumentation(doc="Required: reference option")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="")), ToolInput(tag="in_prog", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vsnp_Group_Reporter_Py_V0_1_0().translate("wdl", allow_empty_container=True)

