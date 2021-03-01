from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Int

Splitunitigs_V0_1_0 = CommandToolBuilder(tool="splitUnitigs", base_command=["splitUnitigs"], inputs=[ToolInput(tag="in_mandatory_path_gkpstore", input_type=Boolean(optional=True), prefix="-g", doc=InputDocumentation(doc="Mandatory path to a gkpStore.")), ToolInput(tag="in_mandatory_path_tigstore", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc="Mandatory path to a tigStore (can exist or not).")), ToolInput(tag="in_process_unitig_iid", input_type=String(optional=True), prefix="-u", doc=InputDocumentation(doc="Process only unitig IID i")), ToolInput(tag="in_split_break_occurs", input_type=Int(optional=True), prefix="-s", doc=InputDocumentation(doc="Do NOT split if the break occurs in the terminal S non-contained reads\nThe default 0 disables this feature")), ToolInput(tag="in_recompute_consensus_sequence", input_type=Boolean(optional=True), prefix="-N", doc=InputDocumentation(doc="Do NOT recompute consensus sequence, only generate new split unitigs")), ToolInput(tag="in_do_modify_tigstore", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="Do NOT modify the tigStore")), ToolInput(tag="in_increase_consensus_verbosity", input_type=Boolean(optional=True), prefix="-V", doc=InputDocumentation(doc="Increase consensus verbosity")), ToolInput(tag="in_generate_picture_evidence", input_type=Boolean(optional=True), prefix="-E", doc=InputDocumentation(doc="Generate a picture of the evidence for each unitig")), ToolInput(tag="in_version", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Splitunitigs_V0_1_0().translate("wdl", allow_empty_container=True)

