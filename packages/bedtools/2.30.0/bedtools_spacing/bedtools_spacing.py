from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Bedtools_Spacing_V0_1_0 = CommandToolBuilder(tool="bedtools_spacing", base_command=["bedtools", "spacing"], inputs=[ToolInput(tag="in_bed", input_type=Boolean(optional=True), prefix="-bed", doc=InputDocumentation(doc="If using BAM input, write output as BED.")), ToolInput(tag="in_header", input_type=File(optional=True), prefix="-header", doc=InputDocumentation(doc="the header from the A file prior to results.")), ToolInput(tag="in_no_buf", input_type=Boolean(optional=True), prefix="-nobuf", doc=InputDocumentation(doc="Disable buffered output. Using this option will cause each line\nof output to be printed as it is generated, rather than saved\nin a buffer. This will make printing large output files\nnoticeably slower, but can be useful in conjunction with\nother software tools and scripts that need to process one\nline of bedtools output at a time.")), ToolInput(tag="in_i_obuf", input_type=Boolean(optional=True), prefix="-iobuf", doc=InputDocumentation(doc="Specify amount of memory to use for input buffer.\nTakes an integer argument. Optional suffixes K/M/G supported.\nNote: currently has no effect with compressed files.\n")), ToolInput(tag="in_i", input_type=String(optional=True), prefix="-i", doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/bedtools:2.30.0--hc088bd4_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bedtools_Spacing_V0_1_0().translate("wdl")

