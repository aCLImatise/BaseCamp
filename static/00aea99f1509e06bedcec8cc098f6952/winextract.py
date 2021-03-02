from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean

Winextract_V0_1_0 = CommandToolBuilder(tool="winextract", base_command=["winextract"], inputs=[ToolInput(tag="in_genome", input_type=File(optional=True), prefix="--genome", doc=InputDocumentation(doc="Genome reference file. Valid filetypes are: .fa and .fasta.")), ToolInput(tag="in_in_bed", input_type=File(optional=True), prefix="--in-bed", doc=InputDocumentation(doc="Input cand-regions. Valid filetype is: .bed.")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output file. Valid filetypes are: .fasta and .fa.")), ToolInput(tag="in_window", input_type=Int(optional=True), prefix="--window", doc=InputDocumentation(doc="Window size to analyse. In range [5..2000].")), ToolInput(tag="in_uow", input_type=Boolean(optional=True), prefix="--uow", doc=InputDocumentation(doc="Use given window.")), ToolInput(tag="in_asn", input_type=Boolean(optional=True), prefix="--asn", doc=InputDocumentation(doc="Add score to output sequence name."))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output file. Valid filetypes are: .fasta and .fa."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Winextract_V0_1_0().translate("wdl", allow_empty_container=True)

