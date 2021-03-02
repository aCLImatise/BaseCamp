from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int, Boolean

Samtools_Mpileup_V0_1_0 = CommandToolBuilder(tool="samtools_mpileup", base_command=["samtools", "mpileup"], inputs=[ToolInput(tag="in_reference_sequence_file", input_type=File(optional=True), prefix="-f", doc=InputDocumentation(doc="reference sequence file [null]")), ToolInput(tag="in_region_pileup_generated", input_type=String(optional=True), prefix="-r", doc=InputDocumentation(doc="region in which pileup is generated [null]")), ToolInput(tag="in_list_positions_chr", input_type=File(optional=True), prefix="-l", doc=InputDocumentation(doc="list of positions (format: chr pos) [null]")), ToolInput(tag="in_cap_mapping_quality", input_type=Int(optional=True), prefix="-M", doc=InputDocumentation(doc="cap mapping quality at INT [60]")), ToolInput(tag="in_min_base_quality", input_type=Int(optional=True), prefix="-Q", doc=InputDocumentation(doc="min base quality [13]")), ToolInput(tag="in_filter_alignment_smaller", input_type=Int(optional=True), prefix="-q", doc=InputDocumentation(doc="filter out alignment with MQ smaller than INT [0]")), ToolInput(tag="in_generate_bcf_output", input_type=Boolean(optional=True), prefix="-g", doc=InputDocumentation(doc="generate BCF output")), ToolInput(tag="in_compress_bcf_output", input_type=Boolean(optional=True), prefix="-u", doc=InputDocumentation(doc="do not compress BCF output")), ToolInput(tag="in_disable_baq_computation", input_type=Boolean(optional=True), prefix="-B", doc=InputDocumentation(doc="disable BAQ computation")), ToolInput(tag="in_in_one_dot_bam", input_type=Int(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Samtools_Mpileup_V0_1_0().translate("wdl", allow_empty_container=True)

