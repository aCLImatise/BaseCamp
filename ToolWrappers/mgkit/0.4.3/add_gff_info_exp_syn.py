from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Add_Gff_Info_Exp_Syn_V0_1_0 = CommandToolBuilder(tool="add_gff_info_exp_syn", base_command=["add-gff-info", "exp_syn"], inputs=[ToolInput(tag="in_reference", input_type=File(optional=True), prefix="--reference", doc=InputDocumentation(doc="reference sequence in fasta format  [required]")), ToolInput(tag="in_split", input_type=Boolean(optional=True), prefix="--split", doc=InputDocumentation(doc="Split the sequence header of the reference at the\nfirst space, to emulate BLAST behaviour")), ToolInput(tag="in_progress", input_type=Boolean(optional=True), prefix="--progress", doc=InputDocumentation(doc="Shows Progress Bar")), ToolInput(tag="in_input_file", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_file", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Add_Gff_Info_Exp_Syn_V0_1_0().translate("wdl", allow_empty_container=True)

