from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Vcfutils_Pl_Subsam_V0_1_0 = CommandToolBuilder(tool="vcfutils.pl_subsam", base_command=["vcfutils.pl", "subsam"], inputs=[ToolInput(tag="in_in_dot_vcf", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_samples", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vcfutils_Pl_Subsam_V0_1_0().translate("wdl", allow_empty_container=True)

