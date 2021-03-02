from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Vcf2Coverage_Pl_V0_1_0 = CommandToolBuilder(tool="vcf2coverage.pl", base_command=["vcf2coverage.pl"], inputs=[ToolInput(tag="in_perl", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_vcf_two_cover_a_edo_tpl", input_type=Int(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_input_file_name", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_cg", input_type=String(optional=True), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vcf2Coverage_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

