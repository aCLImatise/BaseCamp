from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Vcf_Filter_Py_Input_V0_1_0 = CommandToolBuilder(tool="vcf_filter.py_input", base_command=["vcf_filter.py", "input"], inputs=[ToolInput(tag="in_no_filtered", input_type=Boolean(optional=True), prefix="--no-filtered", doc=InputDocumentation(doc="")), ToolInput(tag="in_no_short_circuit", input_type=Boolean(optional=True), prefix="--no-short-circuit", doc=InputDocumentation(doc="")), ToolInput(tag="in_vcf_filter_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vcf_Filter_Py_Input_V0_1_0().translate("wdl", allow_empty_container=True)

