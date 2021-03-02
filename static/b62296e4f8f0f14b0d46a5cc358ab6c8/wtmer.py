from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Wtmer_V0_1_0 = CommandToolBuilder(tool="wtmer", base_command=["wtmer"], inputs=[ToolInput(tag="in_long_reads_file", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="Long reads sequences file, + *")), ToolInput(tag="in_output_file_kmerfrequency", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Output file of kmer_frequency, *")), ToolInput(tag="in_force_overwrite", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="Force overwrite")), ToolInput(tag="in_disable_homopolymer_compression", input_type=Boolean(optional=True), prefix="-H", doc=InputDocumentation(doc="Disable homopolymer compression"))], outputs=[ToolOutput(tag="out_output_file_kmerfrequency", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file_kmerfrequency", type_hint=File()), doc=OutputDocumentation(doc="Output file of kmer_frequency, *"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Wtmer_V0_1_0().translate("wdl", allow_empty_container=True)

