from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File

Vcfsamplediff_V0_1_0 = CommandToolBuilder(tool="vcfsamplediff", base_command=["vcfsamplediff"], inputs=[ToolInput(tag="in_strict", input_type=Boolean(optional=True), prefix="--strict", doc=InputDocumentation(doc="Require that no observations in the germline support the somatic alternate.")), ToolInput(tag="in_tag", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_sample", input_type=String(optional=True), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_vcf_file", input_type=File(), position=4, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vcfsamplediff_V0_1_0().translate("wdl", allow_empty_container=True)

