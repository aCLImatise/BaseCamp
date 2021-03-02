from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, String

Phyluce_Utilities_Replace_Many_Links_V0_1_0 = CommandToolBuilder(tool="phyluce_utilities_replace_many_links", base_command=["phyluce_utilities_replace_many_links"], inputs=[ToolInput(tag="in_in_dir", input_type=Directory(optional=True), prefix="--indir", doc=InputDocumentation(doc="The directory containing the links to rename")), ToolInput(tag="in_oldpath", input_type=String(optional=True), prefix="--oldpath", doc=InputDocumentation(doc="The text you want to replace in the oldpath (include '/')")), ToolInput(tag="in_newpath", input_type=String(optional=True), prefix="--newpath", doc=InputDocumentation(doc="The text you want to use as a replacement in the newpath\n(include '/')")), ToolInput(tag="in_output_directory_hold", input_type=Directory(optional=True), prefix="--outdir", doc=InputDocumentation(doc="The output directory to hold updated symlinks")), ToolInput(tag="in_program_description", input_type=String(), position=0, doc=InputDocumentation(doc="Program description"))], outputs=[ToolOutput(tag="out_output_directory_hold", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_directory_hold", type_hint=File()), doc=OutputDocumentation(doc="The output directory to hold updated symlinks"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phyluce_Utilities_Replace_Many_Links_V0_1_0().translate("wdl", allow_empty_container=True)

