from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, String, File, Boolean

Runca_V0_1_0 = CommandToolBuilder(tool="runCA", base_command=["runCA"], inputs=[ToolInput(tag="in_use_dir_working", input_type=Directory(optional=True), prefix="-d", doc=InputDocumentation(doc="Use <dir> as the working directory.  Required")), ToolInput(tag="in_use_prefix_prefix", input_type=String(optional=True), prefix="-p", doc=InputDocumentation(doc="Use <prefix> as the output prefix.  Required")), ToolInput(tag="in_read_options_specifications", input_type=File(optional=True), prefix="-s", doc=InputDocumentation(doc="Read options from the specifications file <specfile>.\n<specfile> can also be one of the following key words:\n[no]OBT - run with[out] OBT\nnoVec   - run with OBT but without Vector")), ToolInput(tag="in_version", input_type=Boolean(optional=True), prefix="-version", doc=InputDocumentation(doc="Version information")), ToolInput(tag="in_options", input_type=Boolean(optional=True), prefix="-options", doc=InputDocumentation(doc="Describe specFile options, and show default values")), ToolInput(tag="in_frg", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_read_options_specifications", output_type=File(optional=True), selector=InputSelector(input_to_select="in_read_options_specifications", type_hint=File()), doc=OutputDocumentation(doc="Read options from the specifications file <specfile>.\n<specfile> can also be one of the following key words:\n[no]OBT - run with[out] OBT\nnoVec   - run with OBT but without Vector"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Runca_V0_1_0().translate("wdl", allow_empty_container=True)

