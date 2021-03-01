from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String, Boolean

Sampleoverview_V0_1_0 = CommandToolBuilder(tool="SampleOverview", base_command=["SampleOverview"], inputs=[ToolInput(tag="in_in", input_type=File(optional=True), prefix="-in", doc=InputDocumentation(doc="Input variant lists in GSvar format.")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="-out", doc=InputDocumentation(doc="Output variant list file in GSvar format.")), ToolInput(tag="in_window", input_type=Int(optional=True), prefix="-window", doc=InputDocumentation(doc="Window to consider around indel positions to compensate for differing alignments.\nDefault value: '100'")), ToolInput(tag="in_add_cols", input_type=String(optional=True), prefix="-add_cols", doc=InputDocumentation(doc="Comma-separated list of input columns that shall be added to the output. By default, all columns that are present in all input files.\nDefault value: '[auto]'")), ToolInput(tag="in_changelog", input_type=Boolean(optional=True), prefix="--changelog", doc=InputDocumentation(doc="Prints changeloge and exits.")), ToolInput(tag="in_tdx", input_type=Boolean(optional=True), prefix="--tdx", doc=InputDocumentation(doc="Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="Output variant list file in GSvar format."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sampleoverview_V0_1_0().translate("wdl", allow_empty_container=True)

