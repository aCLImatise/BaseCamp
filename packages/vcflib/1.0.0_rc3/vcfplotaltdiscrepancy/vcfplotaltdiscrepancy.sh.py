from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Int, File

Vcfplotaltdiscrepancy_Sh_V0_1_0 = CommandToolBuilder(tool="vcfplotaltdiscrepancy.sh", base_command=["vcfplotaltdiscrepancy.sh"], inputs=[ToolInput(tag="in_g", input_type=Boolean(optional=True), prefix="-g", doc=InputDocumentation(doc="")), ToolInput(tag="in_n", input_type=String(optional=True), prefix="-n", doc=InputDocumentation(doc="")), ToolInput(tag="in_vcf_two_tsv", input_type=Int(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_vcf", input_type=String(optional=True), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_file", input_type=File(optional=True), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vcfplotaltdiscrepancy_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

