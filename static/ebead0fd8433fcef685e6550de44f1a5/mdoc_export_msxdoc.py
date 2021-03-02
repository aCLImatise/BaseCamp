from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Mdoc_Export_Msxdoc_V0_1_0 = CommandToolBuilder(tool="mdoc_export_msxdoc", base_command=["mdoc-export-msxdoc"], inputs=[ToolInput(tag="in_out", input_type=File(optional=True), prefix="--out", doc=InputDocumentation(doc="The XML FILE to generate.\nIf not specified, will create a set of files in\nthe curent directory based on the //AssemblyInfo/\nAssemblyName values within the documentation.\nUse '-' to write to standard output.")), ToolInput(tag="in_mdoc", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_export_msx_doc", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="The XML FILE to generate.\nIf not specified, will create a set of files in\nthe curent directory based on the //AssemblyInfo/\nAssemblyName values within the documentation.\nUse '-' to write to standard output."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mdoc_Export_Msxdoc_V0_1_0().translate("wdl", allow_empty_container=True)

