from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, File, Boolean, String

Prophyle_Download_V0_1_0 = CommandToolBuilder(tool="prophyle_download", base_command=["prophyle", "download"], inputs=[ToolInput(tag="in_directory_tree_sequences", input_type=Directory(optional=True), prefix="-d", doc=InputDocumentation(doc="directory for the tree and the sequences [~/prophyle]")), ToolInput(tag="in_log_file", input_type=File(optional=True), prefix="-l", doc=InputDocumentation(doc="log file")), ToolInput(tag="in_rewrite_library_files", input_type=Boolean(optional=True), prefix="-F", doc=InputDocumentation(doc="rewrite library files if they already exist")), ToolInput(tag="in_advanced_configuration_json", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="[STR [STR ...]]  advanced configuration (a JSON dictionary)")), ToolInput(tag="in_str", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Prophyle_Download_V0_1_0().translate("wdl", allow_empty_container=True)

