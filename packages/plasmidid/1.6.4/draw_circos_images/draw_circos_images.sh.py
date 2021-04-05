from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, File, String

Draw_Circos_Images_Sh_V0_1_0 = CommandToolBuilder(tool="draw_circos_images.sh", base_command=["draw_circos_images.sh"], inputs=[ToolInput(tag="in_directory_containing_files", input_type=Directory(optional=True), prefix="-i", doc=InputDocumentation(doc="directory containing files to represent")), ToolInput(tag="in_containing_config_files", input_type=Directory(optional=True), prefix="-d", doc=InputDocumentation(doc="containing config files")), ToolInput(tag="in_file_selected_draw", input_type=File(optional=True), prefix="-C", doc=InputDocumentation(doc="file selected to draw")), ToolInput(tag="in_file", input_type=File(optional=True), prefix="-s", doc=InputDocumentation(doc="file")), ToolInput(tag="in_directory_create_config", input_type=Directory(optional=True), prefix="-o", doc=InputDocumentation(doc="directory to create config and pictures")), ToolInput(tag="in_remove_config_files", input_type=String(optional=True), prefix="-c", doc=InputDocumentation(doc=": remove config files")), ToolInput(tag="in_usage_message", input_type=String(optional=True), prefix="-v", doc=InputDocumentation(doc="usage message"))], outputs=[], container="quay.io/biocontainers/plasmidid:1.6.4--1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Draw_Circos_Images_Sh_V0_1_0().translate("wdl")

