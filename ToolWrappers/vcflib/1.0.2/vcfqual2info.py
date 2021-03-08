from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Vcfqual2Info_V0_1_0 = CommandToolBuilder(tool="vcfqual2info", base_command=["vcfqual2info"], inputs=[ToolInput(tag="in_key", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_vcf_file", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/vcflib:1.0.2--hfbaaabd_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vcfqual2Info_V0_1_0().translate("wdl")

