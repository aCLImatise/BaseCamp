from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, Directory

Spades_Read_Filter_V0_1_0 = CommandToolBuilder(tool="spades_read_filter", base_command=["spades-read-filter"], inputs=[ToolInput(tag="in_km_er", input_type=Int(optional=True), prefix="--kmer", doc=InputDocumentation(doc="K-mer length")), ToolInput(tag="in_cov", input_type=String(optional=True), prefix="--cov", doc=InputDocumentation(doc="Median kmer count threshold (read pairs, s.t. kmer count median for BOTH reads LESS OR EQUAL to this value will be ignored)")), ToolInput(tag="in_dataset", input_type=String(optional=True), prefix="--dataset", doc=InputDocumentation(doc="Dataset description (in YAML)")), ToolInput(tag="in_threads", input_type=String(optional=True), prefix="--threads", doc=InputDocumentation(doc="# of threads to use")), ToolInput(tag="in_outdir", input_type=Directory(optional=True), prefix="--outdir", doc=InputDocumentation(doc="Output directory to use"))], outputs=[ToolOutput(tag="out_outdir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_outdir", type_hint=File()), doc=OutputDocumentation(doc="Output directory to use"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Spades_Read_Filter_V0_1_0().translate("wdl", allow_empty_container=True)

