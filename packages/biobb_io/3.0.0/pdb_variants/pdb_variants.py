from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Pdb_Variants_V0_1_0 = CommandToolBuilder(tool="pdb_variants", base_command=["pdb_variants"], inputs=[ToolInput(tag="in_config", input_type=File(optional=True), prefix="--config", doc=InputDocumentation(doc="This file can be a YAML file, JSON file or JSON string")), ToolInput(tag="in_output_mutations_list_txt", input_type=File(optional=True), prefix="--output_mutations_list_txt", doc=InputDocumentation(doc="Output variants list text file name\n"))], outputs=[ToolOutput(tag="out_output_mutations_list_txt", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_mutations_list_txt", type_hint=File()), doc=OutputDocumentation(doc="Output variants list text file name\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pdb_Variants_V0_1_0().translate("wdl", allow_empty_container=True)

