from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Psass_Pileup_V0_1_0 = CommandToolBuilder(tool="psass_pileup", base_command=["psass", "pileup"], inputs=[ToolInput(tag="in_reference", input_type=Boolean(optional=True), prefix="--reference", doc=InputDocumentation(doc="TEXT:FILE    Reference file in fasta format, required with CRAM input files")), ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="--output-file", doc=InputDocumentation(doc="TEXT         Write to an output file instead of stdout")), ToolInput(tag="in_min_map_quality", input_type=Boolean(optional=True), prefix="--min-map-quality", doc=InputDocumentation(doc="UINT         Minimum mapping quality to include a read in pileup                        [0]")), ToolInput(tag="in_alignment_files_dot_dot_dot", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc="TEXT         Write to an output file instead of stdout"))], container="quay.io/biocontainers/psass:3.1.0--hc088bd4_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Psass_Pileup_V0_1_0().translate("wdl")

