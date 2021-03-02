from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Vina_Split_V0_1_0 = CommandToolBuilder(tool="vina_split", base_command=["vina_split"], inputs=[ToolInput(tag="in_input", input_type=String(optional=True), prefix="--input", doc=InputDocumentation(doc="input to split (PDBQT)")), ToolInput(tag="in_ligand", input_type=String(optional=True), prefix="--ligand", doc=InputDocumentation(doc="prefix for ligands")), ToolInput(tag="in_flex", input_type=String(optional=True), prefix="--flex", doc=InputDocumentation(doc="prefix for side chains"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vina_Split_V0_1_0().translate("wdl", allow_empty_container=True)

