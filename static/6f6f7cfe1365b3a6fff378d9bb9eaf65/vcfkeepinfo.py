from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int

Vcfkeepinfo_V0_1_0 = CommandToolBuilder(tool="vcfkeepinfo", base_command=["vcfkeepinfo"], inputs=[ToolInput(tag="in_vcf_file", input_type=File(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_field_one", input_type=Int(optional=True), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_field_two", input_type=Int(optional=True), position=2, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/vcflib:1.0.1--hd2e4403_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vcfkeepinfo_V0_1_0().translate("wdl")

