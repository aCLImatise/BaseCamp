from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Fasta_From_Bed_V0_1_0 = CommandToolBuilder(tool="fasta_from_bed", base_command=["fasta-from-bed"], inputs=[ToolInput(tag="in_fast_a_from_bed", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_bed_file", input_type=File(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_genome_filename", input_type=File(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_index_filename", input_type=File(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_fast_a_output_filename", input_type=File(), position=4, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_fast_a_output_filename", output_type=File(), selector=InputSelector(input_to_select="in_fast_a_output_filename", type_hint=File()), doc=OutputDocumentation(doc=""))], container="quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fasta_From_Bed_V0_1_0().translate("wdl")

