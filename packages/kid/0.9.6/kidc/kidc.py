from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Kidc_V0_1_0 = CommandToolBuilder(tool="kidc", base_command=["kidc"], inputs=[ToolInput(tag="in_force", input_type=Boolean(optional=True), prefix="--force", doc=InputDocumentation(doc="Force compilation even if .pyc file already exists.")), ToolInput(tag="in_source", input_type=Boolean(optional=True), prefix="--source", doc=InputDocumentation(doc="Generate .py source files along with .pyc files.\nThis is sometimes useful for debugging.")), ToolInput(tag="in_strip_dest_dir", input_type=File(optional=True), prefix="--strip-dest-dir", doc=InputDocumentation(doc="Strips the supplied path from the beginning of source\nfilenames stored for error messages in the generated\n.pyc files")), ToolInput(tag="in_file_dot_dot_dot", input_type=File(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Kidc_V0_1_0().translate("wdl", allow_empty_container=True)

