from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Directory, Boolean

Metawrap_Assembly_V0_1_0 = CommandToolBuilder(tool="metawrap_assembly", base_command=["metawrap", "assembly"], inputs=[ToolInput(tag="in_forward_fastq_reads", input_type=Int(optional=True), prefix="-1", doc=InputDocumentation(doc="forward fastq reads")), ToolInput(tag="in_reverse_fastq_reads", input_type=Int(optional=True), prefix="-2", doc=InputDocumentation(doc="reverse fastq reads")), ToolInput(tag="in_output_directory", input_type=Directory(optional=True), prefix="-o", doc=InputDocumentation(doc="output directory")), ToolInput(tag="in_memory_gb_default", input_type=Int(optional=True), prefix="-m", doc=InputDocumentation(doc="memory in GB (default=24)")), ToolInput(tag="in_number_threads_defualt", input_type=Int(optional=True), prefix="-t", doc=InputDocumentation(doc="number of threads (defualt=1)")), ToolInput(tag="in_minimum_length_assembled", input_type=Int(optional=True), prefix="-l", doc=InputDocumentation(doc="minimum length of assembled contigs (default=1000)")), ToolInput(tag="in_mega_hit", input_type=Boolean(optional=True), prefix="--megahit", doc=InputDocumentation(doc="assemble with megahit (default)")), ToolInput(tag="in_meta_spades", input_type=Boolean(optional=True), prefix="--metaspades", doc=InputDocumentation(doc="assemble with metaspades instead of megahit (better results but slower amd higher memory requirement)"))], outputs=[ToolOutput(tag="out_output_directory", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_directory", type_hint=File()), doc=OutputDocumentation(doc="output directory"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Metawrap_Assembly_V0_1_0().translate("wdl", allow_empty_container=True)

