from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Bedintersect_V0_1_0 = CommandToolBuilder(tool="BedIntersect", base_command=["BedIntersect"], inputs=[ToolInput(tag="in_in_two", input_type=File(optional=True), prefix="-in2", doc=InputDocumentation(doc="Second input BED file.")), ToolInput(tag="in_mode", input_type=File(optional=True), prefix="-mode", doc=InputDocumentation(doc="Output mode: intersect of both files (intersect), original entry of file 1 (in) or original entry of file 2 (in2).\nDefault value: 'intersect'\nValid: 'intersect,in,in2'")), ToolInput(tag="in_in", input_type=File(optional=True), prefix="-in", doc=InputDocumentation(doc="Input BED file. If unset, reads from STDIN.\nDefault value: ''")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="-out", doc=InputDocumentation(doc="Output BED file. If unset, writes to STDOUT.\nDefault value: ''")), ToolInput(tag="in_changelog", input_type=Boolean(optional=True), prefix="--changelog", doc=InputDocumentation(doc="Prints changeloge and exits.")), ToolInput(tag="in_tdx", input_type=Boolean(optional=True), prefix="--tdx", doc=InputDocumentation(doc="Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."))], outputs=[ToolOutput(tag="out_mode", output_type=File(optional=True), selector=InputSelector(input_to_select="in_mode", type_hint=File()), doc=OutputDocumentation(doc="Output mode: intersect of both files (intersect), original entry of file 1 (in) or original entry of file 2 (in2).\nDefault value: 'intersect'\nValid: 'intersect,in,in2'")), ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="Output BED file. If unset, writes to STDOUT.\nDefault value: ''"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bedintersect_V0_1_0().translate("wdl", allow_empty_container=True)

