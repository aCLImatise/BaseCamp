from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Unitas_Pl_V0_1_0 = CommandToolBuilder(tool="unitas.pl", base_command=["unitas.pl"], inputs=[ToolInput(tag="in_species", input_type=String(optional=True), prefix="-species", doc=InputDocumentation(doc="this:")), ToolInput(tag="in_refseq", input_type=Int(optional=True), prefix="-refseq", doc=InputDocumentation(doc="[-refseq sequence_2.fas ...]")), ToolInput(tag="in_xxxx_x_dot", input_type=String(), position=0, doc=InputDocumentation(doc=".oXXXXoo..                 ...oXXXXXXXXXXXXXXXXXX\nXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXo'''\nXXXXXXXXXXXXXXX------------------XXXXXXXXXXXX'")), ToolInput(tag="in_options_dot", input_type=String(), position=0, doc=InputDocumentation(doc="### How to cite unitas ###"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Unitas_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

