from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Pdb_Variants_V0_1_0 = CommandToolBuilder(tool="pdb_variants", base_command=["pdb_variants"], inputs=[ToolInput(tag="in_config", input_type=File(optional=True), prefix="--config", doc=InputDocumentation(doc="This file can be a YAML file, JSON file or JSON string")), ToolInput(tag="in_output_mutations_list_txt", input_type=File(optional=True), prefix="--output_mutations_list_txt", doc=InputDocumentation(doc="Path to the TXT file containing an ASCII comma separated values of the mutations. Accepted formats: txt.\n"))], outputs=[], container="quay.io/biocontainers/biobb_io:3.5.1--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pdb_Variants_V0_1_0().translate("wdl")

