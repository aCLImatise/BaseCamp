from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Dep_Init_V0_1_0 = CommandToolBuilder(tool="dep_init", base_command=["dep", "init"], inputs=[ToolInput(tag="in_go_path", input_type=Boolean(optional=True), prefix="-gopath", doc=InputDocumentation(doc="search in GOPATH for dependencies (default: false)")), ToolInput(tag="in_no_examples", input_type=Boolean(optional=True), prefix="-no-examples", doc=InputDocumentation(doc="don't include example in Gopkg.toml (default: false)")), ToolInput(tag="in_skip_tools", input_type=Boolean(optional=True), prefix="-skip-tools", doc=InputDocumentation(doc="skip importing configuration from other dependency managers (default: false)")), ToolInput(tag="in_enable_verbose_default", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="enable verbose logging (default: false)")), ToolInput(tag="in_root", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dep_Init_V0_1_0().translate("wdl", allow_empty_container=True)

