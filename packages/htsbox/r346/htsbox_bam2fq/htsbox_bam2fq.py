from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Int, String

Htsbox_Bam2Fq_V0_1_0 = CommandToolBuilder(tool="htsbox_bam2fq", base_command=["htsbox", "bam2fq"], inputs=[ToolInput(tag="in_append_read_name", input_type=Boolean(optional=True), prefix="-a", doc=InputDocumentation(doc="append /1 and /2 to the read name")), ToolInput(tag="in_output_quality_present", input_type=Boolean(optional=True), prefix="-O", doc=InputDocumentation(doc="output quality in the OQ tag if present")), ToolInput(tag="in_copy_bc_tags", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc="copy RG, BC and QT tags to the FASTQ header line")), ToolInput(tag="in_write_singleton_reads", input_type=File(optional=True), prefix="-s", doc=InputDocumentation(doc="write singleton reads to FILE [assume single-end]")), ToolInput(tag="in_bam_two_fq", input_type=Int(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_in_dot_bam", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Htsbox_Bam2Fq_V0_1_0().translate("wdl", allow_empty_container=True)

