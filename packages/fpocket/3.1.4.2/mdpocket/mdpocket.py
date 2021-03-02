from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Mdpocket_V0_1_0 = CommandToolBuilder(tool="mdpocket", base_command=["mdpocket"], inputs=[ToolInput(tag="in_trajectory_format", input_type=File(optional=True), prefix="--trajectory_format", doc=InputDocumentation(doc="PDB file")), ToolInput(tag="in_f", input_type=File(optional=True), prefix="-f", doc=InputDocumentation(doc="PDB file")), ToolInput(tag="in_topology_format", input_type=File(optional=True), prefix="--topology_format", doc=InputDocumentation(doc="(currently only prmtop is supported)")), ToolInput(tag="in_flag_perform_calculations", input_type=String(optional=True), prefix="-x", doc=InputDocumentation(doc="this flag to perform interaction energy grid calculations")), ToolInput(tag="in_output_prefix", input_type=String(optional=True), prefix="--output_prefix", doc=InputDocumentation(doc=": specify the prefix of all output files here")), ToolInput(tag="in_drug_g_ability_score", input_type=Boolean(optional=True), prefix="--druggability_score", doc=InputDocumentation(doc=": put this flag to score pockets by druggability"))], outputs=[], container="quay.io/biocontainers/fpocket:3.1.4.2", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mdpocket_V0_1_0().translate("wdl")

