from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Mutate_V0_1_0 = CommandToolBuilder(tool="mutate", base_command=["mutate"], inputs=[ToolInput(tag="in_config", input_type=File(optional=True), prefix="--config", doc=InputDocumentation(doc="This file can be a YAML file, JSON file or JSON string")), ToolInput(tag="in_input_pdb_path", input_type=File(optional=True), prefix="--input_pdb_path", doc=InputDocumentation(doc="Input PDB file name")), ToolInput(tag="in_output_pdb_path", input_type=File(optional=True), prefix="--output_pdb_path", doc=InputDocumentation(doc="Output PDB file name\n"))], outputs=[ToolOutput(tag="out_output_pdb_path", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_pdb_path", type_hint=File()), doc=OutputDocumentation(doc="Output PDB file name\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mutate_V0_1_0().translate("wdl", allow_empty_container=True)

