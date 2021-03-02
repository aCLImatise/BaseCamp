from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, Boolean

Chroot_V0_1_0 = CommandToolBuilder(tool="chroot", base_command=["chroot"], inputs=[ToolInput(tag="in_groups", input_type=Int(optional=True), prefix="--groups", doc=InputDocumentation(doc="specify supplementary groups as g1,g2,..,gN")), ToolInput(tag="in_user_spec", input_type=String(optional=True), prefix="--userspec", doc=InputDocumentation(doc=":GROUP  specify user and group (ID or name) to use")), ToolInput(tag="in_skip_chdir", input_type=Boolean(optional=True), prefix="--skip-chdir", doc=InputDocumentation(doc="do not change working directory to '/'")), ToolInput(tag="in_new_root", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Chroot_V0_1_0().translate("wdl", allow_empty_container=True)

