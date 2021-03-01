from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Bedinfo_V0_1_0 = CommandToolBuilder(tool="BedInfo", base_command=["BedInfo"], inputs=[ToolInput(tag="in_in", input_type=File(optional=True), prefix="-in", doc=InputDocumentation(doc="Input BED file. If unset, reads from STDIN.\nDefault value: ''")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="-out", doc=InputDocumentation(doc="Output file. If unset, writes to STDOUT.\nDefault value: ''")), ToolInput(tag="in_no_merge", input_type=Boolean(optional=True), prefix="-nomerge", doc=InputDocumentation(doc="If set, the input is not merged before printing statistics.\nDefault value: 'false'")), ToolInput(tag="in_filename", input_type=Boolean(optional=True), prefix="-filename", doc=InputDocumentation(doc="If set, prints the input file name before each line.\nDefault value: 'false'")), ToolInput(tag="in_fai", input_type=File(optional=True), prefix="-fai", doc=InputDocumentation(doc="If set, checks that the maximum position for each chromosome is not exceeded.\nDefault value: ''")), ToolInput(tag="in_changelog", input_type=Boolean(optional=True), prefix="--changelog", doc=InputDocumentation(doc="Prints changeloge and exits.")), ToolInput(tag="in_tdx", input_type=Boolean(optional=True), prefix="--tdx", doc=InputDocumentation(doc="Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="Output file. If unset, writes to STDOUT.\nDefault value: ''"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bedinfo_V0_1_0().translate("wdl", allow_empty_container=True)

