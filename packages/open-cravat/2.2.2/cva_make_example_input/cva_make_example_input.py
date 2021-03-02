from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory

Cva_Make_Example_Input_V0_1_0 = CommandToolBuilder(tool="cva_make_example_input", base_command=["cva", "make-example-input"], inputs=[ToolInput(tag="in_directory", input_type=Directory(), position=0, doc=InputDocumentation(doc="Directory to make the example input file in"))], outputs=[], container="quay.io/biocontainers/open-cravat:2.2.2--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cva_Make_Example_Input_V0_1_0().translate("wdl")

