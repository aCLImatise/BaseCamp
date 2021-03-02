from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Int, String

Fastqtofa_V0_1_0 = CommandToolBuilder(tool="fastqToFa", base_command=["fastqToFa"], inputs=[ToolInput(tag="in_name_verify", input_type=Boolean(optional=True), prefix="-nameVerify", doc=InputDocumentation(doc="='string' - for multi-line fastq files, 'string' must\nmatch somewhere in the sequence names in order to correctly\nidentify the next sequence block (e.g.: -nameVerify='Supercontig_')")), ToolInput(tag="in_qual", input_type=File(optional=True), prefix="-qual", doc=InputDocumentation(doc="- output quality scores to specifed file\n(default: quality scores are ignored)")), ToolInput(tag="in_qual_sizes", input_type=File(optional=True), prefix="-qualSizes", doc=InputDocumentation(doc="- write sizes file for the quality scores")), ToolInput(tag="in_no_errors", input_type=Boolean(optional=True), prefix="-noErrors", doc=InputDocumentation(doc="- warn only on problems, do not error out\n(specify -verbose=3 to see warnings")), ToolInput(tag="in_solexa", input_type=Boolean(optional=True), prefix="-solexa", doc=InputDocumentation(doc="- use Solexa/Illumina quality score algorithm\n(instead of Phread quality)")), ToolInput(tag="in_verbose", input_type=Int(optional=True), prefix="-verbose", doc=InputDocumentation(doc="- set warning level to get some stats output during processing")), ToolInput(tag="in_in_dot_fast_q", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_qual", output_type=File(optional=True), selector=InputSelector(input_to_select="in_qual", type_hint=File()), doc=OutputDocumentation(doc="- output quality scores to specifed file\n(default: quality scores are ignored)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fastqtofa_V0_1_0().translate("wdl", allow_empty_container=True)

