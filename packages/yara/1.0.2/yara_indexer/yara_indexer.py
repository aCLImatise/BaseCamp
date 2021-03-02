from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Directory

Yara_Indexer_V0_1_0 = CommandToolBuilder(tool="yara_indexer", base_command=["yara_indexer"], inputs=[ToolInput(tag="in_version_check", input_type=Boolean(optional=True), prefix="--version-check", doc=InputDocumentation(doc="Turn this option off to disable version update notifications of the\napplication. One of 1, ON, TRUE, T, YES, 0, OFF, FALSE, F, and NO.\nDefault: 1.")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Displays verbose output.")), ToolInput(tag="in_output_prefix", input_type=File(optional=True), prefix="--output-prefix", doc=InputDocumentation(doc="Specify a filename prefix for the reference genome index. Default:\nuse the filename prefix of the reference genome.")), ToolInput(tag="in_tmp_dir", input_type=Directory(optional=True), prefix="--tmp-dir", doc=InputDocumentation(doc="Specify a temporary directory where to construct the index. Default:\nuse the output directory."))], outputs=[ToolOutput(tag="out_tmp_dir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_tmp_dir", type_hint=File()), doc=OutputDocumentation(doc="Specify a temporary directory where to construct the index. Default:\nuse the output directory."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Yara_Indexer_V0_1_0().translate("wdl", allow_empty_container=True)

