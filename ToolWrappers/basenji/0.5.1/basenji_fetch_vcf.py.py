from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Float, String, Int

Basenji_Fetch_Vcf_Py_V0_1_0 = CommandToolBuilder(tool="basenji_fetch_vcf.py", base_command=["basenji_fetch_vcf.py"], inputs=[ToolInput(tag="in_print_full_tables", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="Print full tables describing all linked variants [Default:\nFalse]")), ToolInput(tag="in_ld", input_type=Float(optional=True), prefix="--ld", doc=InputDocumentation(doc="LD threshold to consider variant [Default: 0.5]")), ToolInput(tag="in_population_code", input_type=String(optional=True), prefix="-p", doc=InputDocumentation(doc="Population code")), ToolInput(tag="in_sad_h_five_path", input_type=Int(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_vcf_file", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/basenji:0.5.1--pyhdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Basenji_Fetch_Vcf_Py_V0_1_0().translate("wdl")

