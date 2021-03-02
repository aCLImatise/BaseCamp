from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, File

Bp_Mask_By_Search_Pl_V0_1_0 = CommandToolBuilder(tool="bp_mask_by_search.pl", base_command=["bp_mask_by_search.pl"], inputs=[ToolInput(tag="in_s_format", input_type=String(optional=True), prefix="--sformat", doc=InputDocumentation(doc="Sequence format (fasta,genbank,embl,swissprot)")), ToolInput(tag="in_hard_mask", input_type=Boolean(optional=True), prefix="--hardmask", doc=InputDocumentation(doc="(booelean) Hard mask the sequence with the maskchar [default")), ToolInput(tag="in_outfile", input_type=File(optional=True), prefix="--outfile", doc=InputDocumentation(doc="Output file to save the masked sequence to.")), ToolInput(tag="in_type", input_type=String(optional=True), prefix="--type", doc=InputDocumentation(doc="Alignment seq type you want to mask, the 'hit' or the")), ToolInput(tag="in_information", input_type=String(), position=0, doc=InputDocumentation(doc="AUTHOR - Jason Stajich"))], outputs=[ToolOutput(tag="out_outfile", output_type=File(optional=True), selector=InputSelector(input_to_select="in_outfile", type_hint=File()), doc=OutputDocumentation(doc="Output file to save the masked sequence to."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bp_Mask_By_Search_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

