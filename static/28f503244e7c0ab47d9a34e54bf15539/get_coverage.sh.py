from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Directory, Int, String

Get_Coverage_Sh_V0_1_0 = CommandToolBuilder(tool="get_coverage.sh", base_command=["get_coverage.sh"], inputs=[ToolInput(tag="in_file_sorted_bam", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="file in sorted BAM format")), ToolInput(tag="in_directory_optional", input_type=Directory(optional=True), prefix="-o", doc=InputDocumentation(doc="directory (optional)")), ToolInput(tag="in_extract_length_file", input_type=Int(optional=True), prefix="-d", doc=InputDocumentation(doc="to extract length. Fasta file used to map against")), ToolInput(tag="in_depth_reported_default", input_type=Int(optional=True), prefix="-m", doc=InputDocumentation(doc="depth reported (default 500)")), ToolInput(tag="in_genome_coverage_positions", input_type=Int(optional=True), prefix="-p", doc=InputDocumentation(doc="genome coverage for all positions in BEDGRAPH format includig 0 positions.\nDefault option is bedtools genomecov that needs the reference genome")), ToolInput(tag="in_name", input_type=String(optional=True), prefix="-s", doc=InputDocumentation(doc="name")), ToolInput(tag="in_name_optional_unset", input_type=String(optional=True), prefix="-g", doc=InputDocumentation(doc="name (optional). If unset, samples will be gathered in NO_GROUP group")), ToolInput(tag="in_usage_message", input_type=String(optional=True), prefix="-v", doc=InputDocumentation(doc="usage message"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Get_Coverage_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

