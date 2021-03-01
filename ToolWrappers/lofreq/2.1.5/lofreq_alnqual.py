from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Lofreq_Alnqual_V0_1_0 = CommandToolBuilder(tool="lofreq_alnqual", base_command=["lofreq", "alnqual"], inputs=[ToolInput(tag="in_bam_output_sam", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc="BAM output (instead of SAM)")), ToolInput(tag="in_uncompressed_bam_output", input_type=Boolean(optional=True), prefix="-u", doc=InputDocumentation(doc="Uncompressed BAM output (for piping)")), ToolInput(tag="in_input_sam_header", input_type=Boolean(optional=True), prefix="-S", doc=InputDocumentation(doc="The input is SAM with header")), ToolInput(tag="in_use_default_baq", input_type=Boolean(optional=True), prefix="-e", doc=InputDocumentation(doc="Use default instead of extended BAQ (the latter gives better sensitivity but lower specificity)")), ToolInput(tag="in_compute_base_alignment_qualities", input_type=Boolean(optional=True), prefix="-B", doc=InputDocumentation(doc="Don't compute base alignment qualities")), ToolInput(tag="in_compute_indel_alignment_qualities", input_type=Boolean(optional=True), prefix="-A", doc=InputDocumentation(doc="Don't compute indel alignment qualities")), ToolInput(tag="in_recompute_overwrite_values", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="Recompute i.e. overwrite existing values")), ToolInput(tag="in_aln_dot_bam", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_ref_dot_fast_a", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Lofreq_Alnqual_V0_1_0().translate("wdl", allow_empty_container=True)

