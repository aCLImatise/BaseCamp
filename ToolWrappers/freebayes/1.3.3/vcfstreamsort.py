from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String, File

Vcfstreamsort_V0_1_0 = CommandToolBuilder(tool="vcfstreamsort", base_command=["vcfstreamsort"], inputs=[ToolInput(tag="in_window", input_type=Int(optional=True), prefix="--window", doc=InputDocumentation(doc="number of sites to sort (default 10000)")), ToolInput(tag="in_all", input_type=Boolean(optional=True), prefix="--all", doc=InputDocumentation(doc="load all sites and then sort in memory")), ToolInput(tag="in_vcf", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_file", input_type=File(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vcfstreamsort_V0_1_0().translate("wdl", allow_empty_container=True)

