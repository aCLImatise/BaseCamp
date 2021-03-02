from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Vcfcombine_V0_1_0 = CommandToolBuilder(tool="vcfcombine", base_command=["vcfcombine"], inputs=[ToolInput(tag="in_region", input_type=String(optional=True), prefix="--region", doc=InputDocumentation(doc="A region specifier of the form chrN:x-y to bound the merge")), ToolInput(tag="in_vcf", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_file", input_type=File(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/vcflib:1.0.1--hd2e4403_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vcfcombine_V0_1_0().translate("wdl")

