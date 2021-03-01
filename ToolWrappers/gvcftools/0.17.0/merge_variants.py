from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Merge_Variants_V0_1_0 = CommandToolBuilder(tool="merge_variants", base_command=["merge_variants"], inputs=[ToolInput(tag="in_ref", input_type=String(optional=True), prefix="--ref", doc=InputDocumentation(doc="samtools reference sequence (required)")), ToolInput(tag="in_region", input_type=String(optional=True), prefix="--region", doc=InputDocumentation(doc="samtools reference region (optional)")), ToolInput(tag="in_exclude", input_type=String(optional=True), prefix="--exclude", doc=InputDocumentation(doc="name of chromosome to skip over (argument may be\nspecified multiple times). Exclusions will be ignored\nif a region argument is provided")), ToolInput(tag="in_input", input_type=String(optional=True), prefix="--input", doc=InputDocumentation(doc="merge files (can be specified multiple times)")), ToolInput(tag="in_murdock", input_type=Boolean(optional=True), prefix="--murdock", doc=InputDocumentation(doc="If true, don't stop because of any out-of-order\nposition conflicts. Any out of order positions are\nignored. In case of an overlap the first observation is\nused and subsequent repeats are ignored."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Merge_Variants_V0_1_0().translate("wdl", allow_empty_container=True)

