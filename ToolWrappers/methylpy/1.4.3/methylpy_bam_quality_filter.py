from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int

Methylpy_Bam_Quality_Filter_V0_1_0 = CommandToolBuilder(tool="methylpy_bam_quality_filter", base_command=["methylpy", "bam-quality-filter"], inputs=[ToolInput(tag="in_input_file", input_type=File(optional=True), prefix="--input-file", doc=InputDocumentation(doc="BAM file to filter. (default: None)")), ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="--output-file", doc=InputDocumentation(doc="Name of output file (default: None)")), ToolInput(tag="in_ref_fast_a", input_type=File(optional=True), prefix="--ref-fasta", doc=InputDocumentation(doc="string indicating the path to a fasta file containing\nthe sequences you used for mapping (default: None)")), ToolInput(tag="in_min_mapq", input_type=Int(optional=True), prefix="--min-mapq", doc=InputDocumentation(doc="Minimum MAPQ for reads to be included. (default: 30)")), ToolInput(tag="in_min_num_ch", input_type=Int(optional=True), prefix="--min-num-ch", doc=InputDocumentation(doc="Minimum number of CH sites for mCH level filter to be\napplied. (default: 30)")), ToolInput(tag="in_max_mch_level", input_type=Int(optional=True), prefix="--max-mch-level", doc=InputDocumentation(doc="Maximum mCH level for reads to be included. (default:\n0.7)")), ToolInput(tag="in_buffer_line_number", input_type=Int(optional=True), prefix="--buffer-line-number", doc=InputDocumentation(doc="size of buffer for reads to be written on hard drive.\n(default: 100000)\n"))], outputs=[ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc="Name of output file (default: None)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Methylpy_Bam_Quality_Filter_V0_1_0().translate("wdl", allow_empty_container=True)

