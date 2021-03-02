from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Bamtools_Convert_V0_1_0 = CommandToolBuilder(tool="bamtools_convert", base_command=["bamtools", "convert"], inputs=[ToolInput(tag="in_in", input_type=File(optional=True), prefix="-in", doc=InputDocumentation(doc="the input BAM file(s) [stdin]")), ToolInput(tag="in_list", input_type=File(optional=True), prefix="-list", doc=InputDocumentation(doc="the input BAM file list, one\nline per file")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="-out", doc=InputDocumentation(doc="the output BAM file [stdout]")), ToolInput(tag="in_format", input_type=File(optional=True), prefix="-format", doc=InputDocumentation(doc="the output file format - see\nREADME for recognized formats")), ToolInput(tag="in_region", input_type=File(optional=True), prefix="-region", doc=InputDocumentation(doc="genomic region. Index file is\nrecommended for better performance, and is\nused automatically if it exists. See\n'bamtools help index' for more details on\ncreating one")), ToolInput(tag="in_fast_a", input_type=File(optional=True), prefix="-fasta", doc=InputDocumentation(doc="FASTA reference file")), ToolInput(tag="in_map_qual", input_type=Boolean(optional=True), prefix="-mapqual", doc=InputDocumentation(doc="print the mapping qualities")), ToolInput(tag="in_noheader", input_type=Boolean(optional=True), prefix="-noheader", doc=InputDocumentation(doc="omit the SAM header from")), ToolInput(tag="in_output", input_type=String(), position=0, doc=InputDocumentation(doc="Help:"))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="the output BAM file [stdout]")), ToolOutput(tag="out_format", output_type=File(optional=True), selector=InputSelector(input_to_select="in_format", type_hint=File()), doc=OutputDocumentation(doc="the output file format - see\nREADME for recognized formats"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bamtools_Convert_V0_1_0().translate("wdl", allow_empty_container=True)

