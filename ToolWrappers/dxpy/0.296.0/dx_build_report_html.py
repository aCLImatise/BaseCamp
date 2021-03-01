from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Dx_Build_Report_Html_V0_1_0 = CommandToolBuilder(tool="dx_build_report_html", base_command=["dx-build-report-html"], inputs=[ToolInput(tag="in_remote", input_type=File(optional=True), prefix="--remote", doc=InputDocumentation(doc="Destination route. Can be: (1) a project ID, (2) a\npath, with or without object name (e.g.\n/PATH/REPORT_NAME), (3) project ID + path (e.g.\nPROJECT:/PATH/REPORT_NAME)")), ToolInput(tag="in_local", input_type=File(optional=True), prefix="--local", doc=InputDocumentation(doc="Local file to save baked HTML to")), ToolInput(tag="in_width", input_type=String(optional=True), prefix="--width", doc=InputDocumentation(doc="Width of the final report, in pixels")), ToolInput(tag="in_height", input_type=String(optional=True), prefix="--height", doc=InputDocumentation(doc="Height of the final report, in pixels\n")), ToolInput(tag="in_src", input_type=String(), position=0, doc=InputDocumentation(doc="Source image or HTML file(s)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dx_Build_Report_Html_V0_1_0().translate("wdl", allow_empty_container=True)

