from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Directory, Array, Int

Catch_V1_Run_V0_1_0 = CommandToolBuilder(tool="CATCh_v1.run", base_command=["CATCh_v1.run"], inputs=[ToolInput(tag="in_confirm", input_type=Boolean(optional=True), prefix="--confirm", doc=InputDocumentation(doc="Ask before running embedded script")), ToolInput(tag="in_noexec", input_type=Boolean(optional=True), prefix="--noexec", doc=InputDocumentation(doc="Do not run embedded script")), ToolInput(tag="in_keep", input_type=Boolean(optional=True), prefix="--keep", doc=InputDocumentation(doc="Do not erase target directory after running\nthe embedded script")), ToolInput(tag="in_nox_one_one", input_type=Boolean(optional=True), prefix="--nox11", doc=InputDocumentation(doc="Do not spawn an xterm")), ToolInput(tag="in_no_chown", input_type=Boolean(optional=True), prefix="--nochown", doc=InputDocumentation(doc="Do not give the extracted files to the current user")), ToolInput(tag="in_target", input_type=Directory(optional=True), prefix="--target", doc=InputDocumentation(doc="Extract in NewDirectory")), ToolInput(tag="in_tar", input_type=Array(t=Int(), optional=True), prefix="--tar", doc=InputDocumentation(doc="Access the contents of the archive through the tar command"))], outputs=[], container="quay.io/biocontainers/catch_chimera:1.0--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Catch_V1_Run_V0_1_0().translate("wdl")

