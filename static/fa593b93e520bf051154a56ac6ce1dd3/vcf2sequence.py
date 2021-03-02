from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Vcf2Sequence_V0_1_0 = CommandToolBuilder(tool="vcf2sequence", base_command=["vcf2sequence"], inputs=[ToolInput(tag="in_vcf", input_type=File(optional=True), prefix="--vcf", doc=InputDocumentation(doc="Path to input VCF  [required]")), ToolInput(tag="in_sample", input_type=String(optional=True), prefix="--sample", doc=InputDocumentation(doc="Sample to consider. If not given, take fist sample\nin VCF")), ToolInput(tag="in_region", input_type=String(optional=True), prefix="--region", doc=InputDocumentation(doc="Region string of format chr:start-end")), ToolInput(tag="in_region_file", input_type=File(optional=True), prefix="--region-file", doc=InputDocumentation(doc="Path to BED file containing regions"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vcf2Sequence_V0_1_0().translate("wdl", allow_empty_container=True)

