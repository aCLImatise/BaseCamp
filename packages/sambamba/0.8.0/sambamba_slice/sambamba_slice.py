from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Sambamba_Slice_V0_1_0 = CommandToolBuilder(tool="sambamba_slice", base_command=["sambamba", "slice"], inputs=[ToolInput(tag="in_output_filename", input_type=File(optional=True), prefix="--output-filename", doc=InputDocumentation(doc="output BAM or FASTA filename")), ToolInput(tag="in_regions", input_type=File(optional=True), prefix="--regions", doc=InputDocumentation(doc="output only reads overlapping one of regions from the BED file")), ToolInput(tag="in_fast_a_input", input_type=Boolean(optional=True), prefix="--fasta-input", doc=InputDocumentation(doc="specify that input is in FASTA format\n")), ToolInput(tag="in_samba_mba_slice", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_input_dot_bam_vertical_line_input_dot_fast_a", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_filename", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_filename", type_hint=File()), doc=OutputDocumentation(doc="output BAM or FASTA filename")), ToolOutput(tag="out_regions", output_type=File(optional=True), selector=InputSelector(input_to_select="in_regions", type_hint=File()), doc=OutputDocumentation(doc="output only reads overlapping one of regions from the BED file"))], container="quay.io/biocontainers/sambamba:0.8.0--h984e79f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sambamba_Slice_V0_1_0().translate("wdl")

