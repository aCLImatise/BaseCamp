from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Float, String

Msp_Newick_V0_1_0 = CommandToolBuilder(tool="msp_newick", base_command=["msp", "newick"], inputs=[ToolInput(tag="in_precision", input_type=Float(optional=True), prefix="--precision", doc=InputDocumentation(doc="The number of decimal places in branch lengths\n")), ToolInput(tag="in_history_file", input_type=String(), position=0, doc=InputDocumentation(doc="The msprime history file in HDF5 format"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Msp_Newick_V0_1_0().translate("wdl", allow_empty_container=True)

