from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, String

Coverage_Stats_V0_1_0 = CommandToolBuilder(tool="coverage_stats", base_command=["coverage_stats"], inputs=[ToolInput(tag="in_name_target_", input_type=Int(optional=True), prefix="-t", doc=InputDocumentation(doc="Name of target contig, e.g. HXB2:2253-2256")), ToolInput(tag="in_input_sambam_file", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="Input SAM/BAM file")), ToolInput(tag="in_output_tsv_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Output TSV file")), ToolInput(tag="in_msa_of_contigs", input_type=File(optional=True), prefix="-m", doc=InputDocumentation(doc="MSA of contigs")), ToolInput(tag="in_select", input_type=String(optional=True), prefix="--select", doc=InputDocumentation(doc="Name of contig that is of interest")), ToolInput(tag="in_contig", input_type=String(), position=0, doc=InputDocumentation(doc="optional arguments:"))], outputs=[ToolOutput(tag="out_output_tsv_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_tsv_file", type_hint=File()), doc=OutputDocumentation(doc="Output TSV file"))], container="quay.io/biocontainers/smallgenomeutilities:0.3.2--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Coverage_Stats_V0_1_0().translate("wdl")

