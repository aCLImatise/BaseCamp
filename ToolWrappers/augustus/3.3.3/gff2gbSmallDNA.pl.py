from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Gff2Gbsmalldna_Pl_V0_1_0 = CommandToolBuilder(tool="gff2gbSmallDNA.pl", base_command=["gff2gbSmallDNA.pl"], inputs=[ToolInput(tag="in_bad", input_type=File(optional=True), prefix="--bad", doc=InputDocumentation(doc="Specify a file with gene names. All except these are included in the output.")), ToolInput(tag="in_good", input_type=File(optional=True), prefix="--good", doc=InputDocumentation(doc="Specify a file with gene names. Only these genes are considered\nfrom the input, also for overlap detection.")), ToolInput(tag="in_overlap", input_type=Boolean(optional=True), prefix="--overlap", doc=InputDocumentation(doc="Overlap filtering turned off.")), ToolInput(tag="in_connected", input_type=Boolean(optional=True), prefix="--connected", doc=InputDocumentation(doc="Do not cut a sequence into gene-pieces anymore.")), ToolInput(tag="in_soft_masked", input_type=Boolean(optional=True), prefix="--softmasked", doc=InputDocumentation(doc="Keep softmasking information from input sequence")), ToolInput(tag="in_hard_mask", input_type=Boolean(optional=True), prefix="--hardmask", doc=InputDocumentation(doc="Convert softmasking information from input sequence to hardmasking in output file"))], outputs=[ToolOutput(tag="out_bad", output_type=File(optional=True), selector=InputSelector(input_to_select="in_bad", type_hint=File()), doc=OutputDocumentation(doc="Specify a file with gene names. All except these are included in the output."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gff2Gbsmalldna_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

