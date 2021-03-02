from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Bxtools_Convert_V0_1_0 = CommandToolBuilder(tool="bxtools_convert", base_command=["bxtools", "convert"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Set verbose output")), ToolInput(tag="in_keep_tags", input_type=Boolean(optional=True), prefix="--keep-tags", doc=InputDocumentation(doc="Add chromosome tag (CR) and keep other tags. Default: delete all tags")), ToolInput(tag="in_tag", input_type=Boolean(optional=True), prefix="--tag", doc=InputDocumentation(doc="Tag to flip for chromosome. Default: BX")), ToolInput(tag="in_bam_slash_sam_slash_cram", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bxtools_Convert_V0_1_0().translate("wdl", allow_empty_container=True)

