from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int

Vcfremovesamples_V0_1_0 = CommandToolBuilder(tool="vcfremovesamples", base_command=["vcfremovesamples"], inputs=[ToolInput(tag="in_vcf_file", input_type=File(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_sample_one", input_type=Int(optional=True), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_sample_two", input_type=Int(optional=True), position=2, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/vcflib:1.0.2--hfbaaabd_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vcfremovesamples_V0_1_0().translate("wdl")

