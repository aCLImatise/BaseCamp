from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Duck_Chunk_V0_1_0 = CommandToolBuilder(tool="duck_chunk", base_command=["duck_chunk"], inputs=[ToolInput(tag="in_protein", input_type=String(optional=True), prefix="--protein", doc=InputDocumentation(doc="Apoprotein in PDB format")), ToolInput(tag="in_ligand", input_type=String(optional=True), prefix="--ligand", doc=InputDocumentation(doc="Ligand in mol format")), ToolInput(tag="in_cut_off", input_type=String(optional=True), prefix="--cutoff", doc=InputDocumentation(doc="Cutoff for chunk calculation")), ToolInput(tag="in_ignore_buffers", input_type=Boolean(optional=True), prefix="--ignore-buffers", doc=InputDocumentation(doc="Do not remove buffers (solvent, ions etc.)")), ToolInput(tag="in_interaction", input_type=String(optional=True), prefix="--interaction", doc=InputDocumentation(doc="Protein atom to use for ligand interaction.\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Duck_Chunk_V0_1_0().translate("wdl", allow_empty_container=True)

