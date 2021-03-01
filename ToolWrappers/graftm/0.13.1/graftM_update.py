from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, File, Int

Graftm_Update_V0_1_0 = CommandToolBuilder(tool="graftM_update", base_command=["graftM", "update"], inputs=[ToolInput(tag="in_graft_m_package", input_type=String(optional=True), prefix="--graftm_package", doc=InputDocumentation(doc="GraftM package to update")), ToolInput(tag="in_regenerate_diamond_db", input_type=Boolean(optional=True), prefix="--regenerate_diamond_db", doc=InputDocumentation(doc="Recreate the diamond DB in the package")), ToolInput(tag="in_taxonomy", input_type=File(optional=True), prefix="--taxonomy", doc=InputDocumentation(doc="File containing two tab separated columns, the first with the ID of the sequences, the second with the taxonomy string (required unless --rerooted_annotated_tree or --taxtastic_taxonomy and --taxtastic_seqinfo are specified)")), ToolInput(tag="in_sequences", input_type=String(optional=True), prefix="--sequences", doc=InputDocumentation(doc="Unaligned sequences (required unless --regenerate_diamond_db is set)")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Name of output GraftM package")), ToolInput(tag="in_verbosity", input_type=Int(optional=True), prefix="--verbosity", doc=InputDocumentation(doc="1 - 5, 1 being silent, 5 being noisy indeed (default: 4)")), ToolInput(tag="in_log", input_type=File(optional=True), prefix="--log", doc=InputDocumentation(doc="output logging information to file"))], outputs=[ToolOutput(tag="out_log", output_type=File(optional=True), selector=InputSelector(input_to_select="in_log", type_hint=File()), doc=OutputDocumentation(doc="output logging information to file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Graftm_Update_V0_1_0().translate("wdl", allow_empty_container=True)

