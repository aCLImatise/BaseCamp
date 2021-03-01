from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Transindel_Call_Py_V0_1_0 = CommandToolBuilder(tool="transIndel_call.py", base_command=["transIndel_call.py"], inputs=[ToolInput(tag="in_reference_genome_used", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc=":reference genome used for VCF REF column (required for valid VCF)")), ToolInput(tag="in_minimal_observation_count", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc=":minimal observation count for Indel (default 4)")), ToolInput(tag="in_minimal_depth_call", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc=":minimal depth to call Indel (default 10)")), ToolInput(tag="in_minimal_variant_allele", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc=":minimal variant allele frequency (default 0.1)")), ToolInput(tag="in_minimal_indel_length", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc=":minimal indel length to report (default 10)")), ToolInput(tag="in_minimal_mapq_call", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc=":minimal mapq of read from BAM file to call indel (default 15)")), ToolInput(tag="in_limit_analysis_string", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc=":Limit analysis to targets listed in the BED-format FILE or a samtools region string")), ToolInput(tag="in_o", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="")), ToolInput(tag="in_i", input_type=String(optional=True), prefix="-i", doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_o", output_type=File(optional=True), selector=InputSelector(input_to_select="in_o", type_hint=File()), doc=OutputDocumentation(doc=""))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Transindel_Call_Py_V0_1_0().translate("wdl", allow_empty_container=True)

