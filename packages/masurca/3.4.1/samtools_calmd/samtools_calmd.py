from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Samtools_Calmd_V0_1_0 = CommandToolBuilder(tool="samtools_calmd", base_command=["samtools", "calmd"], inputs=[ToolInput(tag="in_change_identical_bases", input_type=Boolean(optional=True), prefix="-e", doc=InputDocumentation(doc="change identical bases to '='")), ToolInput(tag="in_uncompressed_bam_output", input_type=Boolean(optional=True), prefix="-u", doc=InputDocumentation(doc="uncompressed BAM output (for piping)")), ToolInput(tag="in_compressed_bam_output", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc="compressed BAM output")), ToolInput(tag="in_input_sam_header", input_type=Boolean(optional=True), prefix="-S", doc=InputDocumentation(doc="the input is SAM with header")), ToolInput(tag="in_modify_quality_string", input_type=Boolean(optional=True), prefix="-A", doc=InputDocumentation(doc="modify the quality string")), ToolInput(tag="in_compute_bq_tag", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="compute the BQ tag (without -A) or cap baseQ by BAQ (with -A)")), ToolInput(tag="in_extended_baq_better", input_type=Boolean(optional=True), prefix="-E", doc=InputDocumentation(doc="extended BAQ for better sensitivity but lower specificity")), ToolInput(tag="in_eu_brs", input_type=Boolean(optional=True), prefix="-eubrS", doc=InputDocumentation(doc="")), ToolInput(tag="in_sam_tools", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_fill_md", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_aln_dot_bam", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_ref_dot_fast_a", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Samtools_Calmd_V0_1_0().translate("wdl", allow_empty_container=True)

