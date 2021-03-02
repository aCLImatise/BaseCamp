from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Phyluce_Utilities_Filter_Bed_By_Fasta_V0_1_0 = CommandToolBuilder(tool="phyluce_utilities_filter_bed_by_fasta", base_command=["phyluce_utilities_filter_bed_by_fasta"], inputs=[ToolInput(tag="in_bed", input_type=File(optional=True), prefix="--bed", doc=InputDocumentation(doc="The BED file to filter.")), ToolInput(tag="in_fast_a", input_type=File(optional=True), prefix="--fasta", doc=InputDocumentation(doc="The FASTA file to use as a filter.")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="The output BED file"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="The output BED file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phyluce_Utilities_Filter_Bed_By_Fasta_V0_1_0().translate("wdl", allow_empty_container=True)

