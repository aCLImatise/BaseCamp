from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, Float

Fastq_Scan_V0_1_0 = CommandToolBuilder(tool="fastq_scan", base_command=["fastq-scan"], inputs=[ToolInput(tag="in_genome_size_default", input_type=Int(optional=True), prefix="-g", doc=InputDocumentation(doc="Genome size for calculating estimated sequencing coverage. (Default 1)")), ToolInput(tag="in_ascii_offset_input", input_type=Int(optional=True), prefix="-p", doc=InputDocumentation(doc="ASCII offset for input quality scores, can be 33 or 64. (Default 33)")), ToolInput(tag="in_print_version_information", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="Print version information and exit")), ToolInput(tag="in_zero_dot_four_dot_one", input_type=Float(), position=0, doc=InputDocumentation(doc="Optional arguments:"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fastq_Scan_V0_1_0().translate("wdl", allow_empty_container=True)

