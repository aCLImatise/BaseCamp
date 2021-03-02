from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Xcfinfo_V0_1_0 = CommandToolBuilder(tool="xcfinfo", base_command=["xcfinfo"], inputs=[ToolInput(tag="in_show_version_", input_type=Boolean(optional=True), prefix="-V", doc=InputDocumentation(doc="show version (--version)")), ToolInput(tag="in_show_progress_messages", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="show progress messages (--verbose)")), ToolInput(tag="in_input_bzip_compressed", input_type=Boolean(optional=True), prefix="-j", doc=InputDocumentation(doc="input is bzip2 compressed (--bzip)")), ToolInput(tag="in_use_separate_groups", input_type=File(optional=True), prefix="-p", doc=InputDocumentation(doc="use 'string' to separate the groups in the paths (--path-separator)")), ToolInput(tag="in_input_gzip_compressed", input_type=Boolean(optional=True), prefix="-z", doc=InputDocumentation(doc="input is gzip compressed (--gzip)")), ToolInput(tag="in_use_decompress_input", input_type=String(optional=True), prefix="-Z", doc=InputDocumentation(doc="use 'command' to decompress input (--unpack)")), ToolInput(tag="in_use_utf_", input_type=Boolean(optional=True), prefix="-u", doc=InputDocumentation(doc="use UTF-8 for layer names (--utf8)")), ToolInput(tag="in_filename_dot_xcf", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Xcfinfo_V0_1_0().translate("wdl", allow_empty_container=True)

