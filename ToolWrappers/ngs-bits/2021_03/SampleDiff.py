from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean

Samplediff_V0_1_0 = CommandToolBuilder(tool="SampleDiff", base_command=["SampleDiff"], inputs=[ToolInput(tag="in_in_one", input_type=File(optional=True), prefix="-in1", doc=InputDocumentation(doc="Input variant list in GSvar format.")), ToolInput(tag="in_in_two", input_type=File(optional=True), prefix="-in2", doc=InputDocumentation(doc="Input variant list in GSvar format.")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="-out", doc=InputDocumentation(doc="Output file. If unset, writes to STDOUT.\nDefault value: ''")), ToolInput(tag="in_window", input_type=Int(optional=True), prefix="-window", doc=InputDocumentation(doc="Window to consider around indel positions to compensate for differing alignments.\nDefault value: '100'")), ToolInput(tag="in_nei", input_type=Boolean(optional=True), prefix="-nei", doc=InputDocumentation(doc="Allow non-exact indel matches. If set, all indels in the window are considered matches.\nDefault value: 'false'")), ToolInput(tag="in_sm", input_type=Boolean(optional=True), prefix="-sm", doc=InputDocumentation(doc="Also show matches. If unset, matching variants are not printed.\nDefault value: 'false'")), ToolInput(tag="in_changelog", input_type=Boolean(optional=True), prefix="--changelog", doc=InputDocumentation(doc="Prints changeloge and exits.")), ToolInput(tag="in_tdx", input_type=Boolean(optional=True), prefix="--tdx", doc=InputDocumentation(doc="Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="Output file. If unset, writes to STDOUT.\nDefault value: ''"))], container="quay.io/biocontainers/ngs-bits:2021_03--py39h5902420_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Samplediff_V0_1_0().translate("wdl")

