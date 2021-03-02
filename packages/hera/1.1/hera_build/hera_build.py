from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Directory

Hera_Build_V0_1_0 = CommandToolBuilder(tool="hera_build", base_command=["hera_build"], inputs=[ToolInput(tag="in_fast_a", input_type=Boolean(optional=True), prefix="--fasta", doc=InputDocumentation(doc="input reference genome fasta file")), ToolInput(tag="in_gtf", input_type=Boolean(optional=True), prefix="--gtf", doc=InputDocumentation(doc="input reference annotation gtf file")), ToolInput(tag="in_outdir", input_type=Directory(optional=True), prefix="--outdir", doc=InputDocumentation(doc="output directory")), ToolInput(tag="in_full_index", input_type=Boolean(optional=True), prefix="--full_index", doc=InputDocumentation(doc="0: none, 1: index full genome")), ToolInput(tag="in_gr_ch_three_eight", input_type=Boolean(optional=True), prefix="--grch38", doc=InputDocumentation(doc="is input fasta GRCh38? 0: No, 1: Yes"))], outputs=[ToolOutput(tag="out_outdir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_outdir", type_hint=File()), doc=OutputDocumentation(doc="output directory"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hera_Build_V0_1_0().translate("wdl", allow_empty_container=True)

