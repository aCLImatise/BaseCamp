from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String, Int

Samtools_Cat_V0_1_0 = CommandToolBuilder(tool="samtools_cat", base_command=["samtools", "cat"], inputs=[ToolInput(tag="in_list_input_bamcram", input_type=File(optional=True), prefix="-b", doc=InputDocumentation(doc="list of input BAM/CRAM file names, one per line")), ToolInput(tag="in_copy_header_file", input_type=File(optional=True), prefix="-h", doc=InputDocumentation(doc="copy the header from FILE [default is 1st input file]")), ToolInput(tag="in_output_bamcram", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="output BAM/CRAM")), ToolInput(tag="in_no_pg", input_type=Boolean(optional=True), prefix="--no-PG", doc=InputDocumentation(doc="do not add a PG line")), ToolInput(tag="in_output_fmt", input_type=String(optional=True), prefix="--output-fmt", doc=InputDocumentation(doc="[,OPT[=VAL]]...\nSpecify output format (SAM, BAM, CRAM)")), ToolInput(tag="in_output_fmt_option", input_type=File(optional=True), prefix="--output-fmt-option", doc=InputDocumentation(doc="[=VAL]\nSpecify a single output file format option in the form\nof OPTION or OPTION=VALUE")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of additional threads to use [0]")), ToolInput(tag="in_verbosity", input_type=Int(optional=True), prefix="--verbosity", doc=InputDocumentation(doc="Set level of verbosity\n")), ToolInput(tag="in_in_one_dot_bam", input_type=Int(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_fmt_option", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_fmt_option", type_hint=File()), doc=OutputDocumentation(doc="[=VAL]\nSpecify a single output file format option in the form\nof OPTION or OPTION=VALUE"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Samtools_Cat_V0_1_0().translate("wdl", allow_empty_container=True)

