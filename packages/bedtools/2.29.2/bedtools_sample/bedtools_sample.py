from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Bedtools_Sample_V0_1_0 = CommandToolBuilder(tool="bedtools_sample", base_command=["bedtools", "sample"], inputs=[ToolInput(tag="in_number_records_generate", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="The number of records to generate.\n- Default = 1,000,000.\n- (INTEGER)")), ToolInput(tag="in_seed", input_type=Boolean(optional=True), prefix="-seed", doc=InputDocumentation(doc="Supply an integer seed for the shuffling.\n- By default, the seed is chosen automatically.\n- (INTEGER)")), ToolInput(tag="in_ub_am", input_type=Boolean(optional=True), prefix="-ubam", doc=InputDocumentation(doc="Write uncompressed BAM output. Default writes compressed BAM.")), ToolInput(tag="in_require_same_strandedness", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="Require same strandedness.  That is, only give records\nthat have the same strand. Use '-s forward' or '-s reverse'\nfor forward or reverse strand records, respectively.\n- By default, records are reported without respect to strand.")), ToolInput(tag="in_header", input_type=File(optional=True), prefix="-header", doc=InputDocumentation(doc="the header from the input file prior to results.")), ToolInput(tag="in_bed", input_type=Boolean(optional=True), prefix="-bed", doc=InputDocumentation(doc="If using BAM input, write output as BED.")), ToolInput(tag="in_no_buf", input_type=Boolean(optional=True), prefix="-nobuf", doc=InputDocumentation(doc="Disable buffered output. Using this option will cause each line\nof output to be printed as it is generated, rather than saved\nin a buffer. This will make printing large output files\nnoticeably slower, but can be useful in conjunction with\nother software tools and scripts that need to process one\nline of bedtools output at a time.")), ToolInput(tag="in_i_obuf", input_type=Boolean(optional=True), prefix="-iobuf", doc=InputDocumentation(doc="Specify amount of memory to use for input buffer.\nTakes an integer argument. Optional suffixes K/M/G supported.\nNote: currently has no effect with compressed files.")), ToolInput(tag="in_i", input_type=String(optional=True), prefix="-i", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bedtools_Sample_V0_1_0().translate("wdl", allow_empty_container=True)

