from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Duck_Prepare_Sys_V0_1_0 = CommandToolBuilder(tool="duck_prepare_sys", base_command=["duck_prepare_sys"], inputs=[ToolInput(tag="in_protein", input_type=String(optional=True), prefix="--protein", doc=InputDocumentation(doc="Apoprotein in PDB format")), ToolInput(tag="in_ligand", input_type=String(optional=True), prefix="--ligand", doc=InputDocumentation(doc="Ligand in mol format")), ToolInput(tag="in_chunk", input_type=String(optional=True), prefix="--chunk", doc=InputDocumentation(doc="Chunked protein")), ToolInput(tag="in_interaction", input_type=String(optional=True), prefix="--interaction", doc=InputDocumentation(doc="Protein atom to use for ligand interaction.")), ToolInput(tag="in_seed", input_type=String(optional=True), prefix="--seed", doc=InputDocumentation(doc="Random seed.")), ToolInput(tag="in_gpu_id", input_type=String(optional=True), prefix="--gpu-id", doc=InputDocumentation(doc="GPU ID (optional); if not specified, runs on CPU only.")), ToolInput(tag="in_force_constant_eq", input_type=String(optional=True), prefix="--force-constant-eq", doc=InputDocumentation(doc="Force constant for equilibration.\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Duck_Prepare_Sys_V0_1_0().translate("wdl", allow_empty_container=True)

