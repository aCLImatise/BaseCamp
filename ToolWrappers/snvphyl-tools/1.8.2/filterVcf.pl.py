from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Filtervcf_Pl_V0_1_0 = CommandToolBuilder(tool="filterVcf.pl", base_command=["filterVcf.pl"], inputs=[ToolInput(tag="in_no_indels", input_type=String(optional=True), prefix="--noindels", doc=InputDocumentation(doc="remove indels")), ToolInput(tag="in_remove_variants_lower", input_type=String(optional=True), prefix="-d", doc=InputDocumentation(doc="to remove variants with this depth and lower")), ToolInput(tag="in_file_remember_where", input_type=File(optional=True), prefix="-b", doc=InputDocumentation(doc="a file to remember where positions with low quality variations are held\nat /usr/local/bin/filterVcf.pl line 18.\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Filtervcf_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

