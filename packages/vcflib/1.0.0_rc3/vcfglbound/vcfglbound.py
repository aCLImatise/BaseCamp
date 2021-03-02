from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, File

Vcfglbound_V0_1_0 = CommandToolBuilder(tool="vcfglbound", base_command=["vcfglbound"], inputs=[ToolInput(tag="in_bound", input_type=String(optional=True), prefix="--bound", doc=InputDocumentation(doc="Bound GLs to this limit.")), ToolInput(tag="in_exclude_broken", input_type=Boolean(optional=True), prefix="--exclude-broken", doc=InputDocumentation(doc="If GLs are > 0, remove site.")), ToolInput(tag="in_vcf_file", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vcfglbound_V0_1_0().translate("wdl", allow_empty_container=True)

