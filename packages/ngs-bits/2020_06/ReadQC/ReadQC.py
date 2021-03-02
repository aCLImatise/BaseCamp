from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Readqc_V0_1_0 = CommandToolBuilder(tool="ReadQC", base_command=["ReadQC"], inputs=[ToolInput(tag="in_in_one", input_type=File(optional=True), prefix="-in1", doc=InputDocumentation(doc="Forward input gzipped FASTQ file(s).")), ToolInput(tag="in_in_two", input_type=File(optional=True), prefix="-in2", doc=InputDocumentation(doc="Reverse input gzipped FASTQ file(s) for paired-end mode (same number of cycles/reads as 'in1').\nDefault value: ''")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="-out", doc=InputDocumentation(doc="Output qcML file. If unset, writes to STDOUT.\nDefault value: ''")), ToolInput(tag="in_txt", input_type=Boolean(optional=True), prefix="-txt", doc=InputDocumentation(doc="Writes TXT format instead of qcML.\nDefault value: 'false'")), ToolInput(tag="in_changelog", input_type=Boolean(optional=True), prefix="--changelog", doc=InputDocumentation(doc="Prints changeloge and exits.")), ToolInput(tag="in_tdx", input_type=Boolean(optional=True), prefix="--tdx", doc=InputDocumentation(doc="Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="Output qcML file. If unset, writes to STDOUT.\nDefault value: ''"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Readqc_V0_1_0().translate("wdl", allow_empty_container=True)

