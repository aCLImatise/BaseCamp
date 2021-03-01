from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean

Fastqtrim_V0_1_0 = CommandToolBuilder(tool="FastqTrim", base_command=["FastqTrim"], inputs=[ToolInput(tag="in_in", input_type=File(optional=True), prefix="-in", doc=InputDocumentation(doc="Input gzipped FASTQ file.")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="-out", doc=InputDocumentation(doc="Output gzipped FASTQ file.")), ToolInput(tag="in_start", input_type=Int(optional=True), prefix="-start", doc=InputDocumentation(doc="Trim this number of bases from the start of the read.\nDefault value: '0'")), ToolInput(tag="in_end", input_type=Int(optional=True), prefix="-end", doc=InputDocumentation(doc="Trim this number of bases from the end of the read.\nDefault value: '0'")), ToolInput(tag="in_len", input_type=Int(optional=True), prefix="-len", doc=InputDocumentation(doc="Restrict read length to this value (after trimming from start/end).\nDefault value: '0'")), ToolInput(tag="in_changelog", input_type=Boolean(optional=True), prefix="--changelog", doc=InputDocumentation(doc="Prints changeloge and exits.")), ToolInput(tag="in_tdx", input_type=Boolean(optional=True), prefix="--tdx", doc=InputDocumentation(doc="Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="Output gzipped FASTQ file."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fastqtrim_V0_1_0().translate("wdl", allow_empty_container=True)

