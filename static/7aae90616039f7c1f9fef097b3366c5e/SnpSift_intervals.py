from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Snpsift_Intervals_V0_1_0 = CommandToolBuilder(tool="SnpSift_intervals", base_command=["SnpSift", "intervals"], inputs=[ToolInput(tag="in_vcf_file_default", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc=":     VCF file. Default STDIN")), ToolInput(tag="in_exclude_vcf_entries", input_type=Boolean(optional=True), prefix="-x", doc=InputDocumentation(doc=":     Exclude VCF entries in intervals")), ToolInput(tag="in_jar", input_type=String(optional=True), prefix="-jar", doc=InputDocumentation(doc="")), ToolInput(tag="in_java", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_intervals", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_file_ndot_bed", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Snpsift_Intervals_V0_1_0().translate("wdl", allow_empty_container=True)

