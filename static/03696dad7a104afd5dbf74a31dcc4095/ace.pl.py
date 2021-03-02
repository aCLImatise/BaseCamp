from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, File, Boolean

Ace_Pl_V0_1_0 = CommandToolBuilder(tool="ace.pl", base_command=["ace.pl"], inputs=[ToolInput(tag="in_host", input_type=String(optional=True), prefix="-host", doc=InputDocumentation(doc="Server host (localhost)")), ToolInput(tag="in_port", input_type=Int(optional=True), prefix="-port", doc=InputDocumentation(doc="Server port (200005)")), ToolInput(tag="in_path", input_type=File(optional=True), prefix="-path", doc=InputDocumentation(doc="Local database path (no default)")), ToolInput(tag="in_url", input_type=Boolean(optional=True), prefix="-url", doc=InputDocumentation(doc="<url>       Server URL (see below")), ToolInput(tag="in_login", input_type=String(optional=True), prefix="-login", doc=InputDocumentation(doc="Username")), ToolInput(tag="in_pass", input_type=String(optional=True), prefix="-pass", doc=InputDocumentation(doc="Password")), ToolInput(tag="in_tcsh", input_type=Boolean(optional=True), prefix="-tcsh", doc=InputDocumentation(doc="Use T-shell completion mode")), ToolInput(tag="in_save", input_type=Boolean(optional=True), prefix="-save", doc=InputDocumentation(doc="Save database updates automatically")), ToolInput(tag="in_exec", input_type=String(optional=True), prefix="-exec", doc=InputDocumentation(doc="Run a command and quit"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ace_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

