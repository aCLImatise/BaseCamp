from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File

Isaac_Merge_References_V0_1_0 = CommandToolBuilder(tool="isaac_merge_references", base_command=["isaac-merge-references"], inputs=[ToolInput(tag="in_canonicalize_following_symlinks", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="Canonicalize by following all symlinks")), ToolInput(tag="in_do_add_newline", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="Don't add newline")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="Verbose")), ToolInput(tag="in_fnv", input_type=Boolean(optional=True), prefix="-fnv", doc=InputDocumentation(doc="")), ToolInput(tag="in_dirname", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_readlink", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_file", input_type=File(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_filename", input_type=File(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/isaac4:04.18.11.09--h07bff40_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Isaac_Merge_References_V0_1_0().translate("wdl")

