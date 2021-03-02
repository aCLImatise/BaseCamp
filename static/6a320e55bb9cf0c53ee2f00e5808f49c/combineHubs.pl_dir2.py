from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Combinehubs_Pl_Dir2_V0_1_0 = CommandToolBuilder(tool="combineHubs.pl_dir2", base_command=["combineHubs.pl", "dir2"], inputs=[ToolInput(tag="in_same_as_dpr", input_type=Boolean(optional=True), prefix="-a", doc=InputDocumentation(doc="Same as -dpR")), ToolInput(tag="in_recurse", input_type=Boolean(optional=True), prefix="-R", doc=InputDocumentation(doc="Recurse")), ToolInput(tag="in_preserve_symlinks_default", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="Preserve symlinks (default if -R)")), ToolInput(tag="in_follow_all_symlinks", input_type=Boolean(optional=True), prefix="-L", doc=InputDocumentation(doc="Follow all symlinks")), ToolInput(tag="in_follow_symlinks_command", input_type=Boolean(optional=True), prefix="-H", doc=InputDocumentation(doc="Follow symlinks on command line")), ToolInput(tag="in_preserve_file_attributes", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="Preserve file attributes if possible")), ToolInput(tag="in_overwrite", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="Overwrite")), ToolInput(tag="in_prompt_before_overwrite", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="Prompt before overwrite")), ToolInput(tag="in_create_symlinks", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc="Create (sym)links")), ToolInput(tag="in_cp", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_source_dot_dot_dot", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_dest", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Combinehubs_Pl_Dir2_V0_1_0().translate("wdl", allow_empty_container=True)

