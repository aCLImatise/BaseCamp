from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Restrict_Repset_Py_V0_1_0 = CommandToolBuilder(tool="restrict_repset.py", base_command=["restrict_repset.py"], inputs=[ToolInput(tag="in_biom_fp", input_type=File(optional=True), prefix="--biom_fp", doc=InputDocumentation(doc="Path to a biom-format file with OTU-Sample abundance\ndata.")), ToolInput(tag="in_rep_set_fp", input_type=File(optional=True), prefix="--repset_fp", doc=InputDocumentation(doc="Path to a FASTA-format file containing the\nrepresentative set of OTUs")), ToolInput(tag="in_rep_set_out_fp", input_type=File(optional=True), prefix="--repset_out_fp", doc=InputDocumentation(doc="Path to the new restricted repset file\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Restrict_Repset_Py_V0_1_0().translate("wdl", allow_empty_container=True)

