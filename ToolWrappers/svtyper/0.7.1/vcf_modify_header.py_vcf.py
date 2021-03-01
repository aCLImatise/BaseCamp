from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Vcf_Modify_Header_Py_Vcf_V0_1_0 = CommandToolBuilder(tool="vcf_modify_header.py_vcf", base_command=["vcf_modify_header.py", "vcf"], inputs=[ToolInput(tag="in_d", input_type=String(optional=True), prefix="-d", doc=InputDocumentation(doc="")), ToolInput(tag="in_n", input_type=String(optional=True), prefix="-n", doc=InputDocumentation(doc="")), ToolInput(tag="in_t", input_type=String(optional=True), prefix="-t", doc=InputDocumentation(doc="")), ToolInput(tag="in_c", input_type=String(optional=True), prefix="-c", doc=InputDocumentation(doc="")), ToolInput(tag="in_i", input_type=String(optional=True), prefix="-i", doc=InputDocumentation(doc="")), ToolInput(tag="in_vcf_modify_header_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vcf_Modify_Header_Py_Vcf_V0_1_0().translate("wdl", allow_empty_container=True)

