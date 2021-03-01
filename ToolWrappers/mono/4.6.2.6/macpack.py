from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Directory, File, Int, Boolean

Macpack_V0_1_0 = CommandToolBuilder(tool="macpack", base_command=["macpack"], inputs=[ToolInput(tag="in_appname", input_type=String(optional=True), prefix="-appname", doc=InputDocumentation(doc=":appname    Application Name")), ToolInput(tag="in_output", input_type=Directory(optional=True), prefix="-output", doc=InputDocumentation(doc=":OUTPUT      Output directory")), ToolInput(tag="in_assembly_to_pack", input_type=String(optional=True), prefix="-a", doc=InputDocumentation(doc="Assembly to pack")), ToolInput(tag="in_icon", input_type=File(optional=True), prefix="-icon", doc=InputDocumentation(doc="Icon filename")), ToolInput(tag="in_resource_additional_files", input_type=Int(optional=True), prefix="-r", doc=InputDocumentation(doc=",resource2          Additional files to bundle")), ToolInput(tag="in__mode_application", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc="[winforms|cocoa|x11|console] The mode for the application"))], outputs=[ToolOutput(tag="out_output", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc=":OUTPUT      Output directory"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Macpack_V0_1_0().translate("wdl", allow_empty_container=True)

