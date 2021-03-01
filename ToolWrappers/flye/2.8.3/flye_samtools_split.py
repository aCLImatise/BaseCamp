from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String, Int

Flye_Samtools_Split_V0_1_0 = CommandToolBuilder(tool="flye_samtools_split", base_command=["flye-samtools", "split"], inputs=[ToolInput(tag="in_output_filename_format", input_type=File(optional=True), prefix="-f", doc=InputDocumentation(doc="output filename format string ['%*_%#.%.']")), ToolInput(tag="in_verbose_output", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="verbose output")), ToolInput(tag="in_input_fmt_option", input_type=File(optional=True), prefix="--input-fmt-option", doc=InputDocumentation(doc="[=VAL]\nSpecify a single input file format option in the form\nof OPTION or OPTION=VALUE")), ToolInput(tag="in_output_fmt", input_type=String(optional=True), prefix="--output-fmt", doc=InputDocumentation(doc="[,OPT[=VAL]]...\nSpecify output format (SAM, BAM, CRAM)")), ToolInput(tag="in_output_fmt_option", input_type=File(optional=True), prefix="--output-fmt-option", doc=InputDocumentation(doc="[=VAL]\nSpecify a single output file format option in the form\nof OPTION or OPTION=VALUE")), ToolInput(tag="in_reference", input_type=File(optional=True), prefix="--reference", doc=InputDocumentation(doc="Reference sequence FASTA FILE [null]")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of additional threads to use [0]")), ToolInput(tag="in_sam_tools", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_split", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_filename_format", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_filename_format", type_hint=File()), doc=OutputDocumentation(doc="output filename format string ['%*_%#.%.']")), ToolOutput(tag="out_output_fmt_option", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_fmt_option", type_hint=File()), doc=OutputDocumentation(doc="[=VAL]\nSpecify a single output file format option in the form\nof OPTION or OPTION=VALUE"))], container="quay.io/biocontainers/flye:2.8.3--py38h1c8e9b9_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Flye_Samtools_Split_V0_1_0().translate("wdl")

