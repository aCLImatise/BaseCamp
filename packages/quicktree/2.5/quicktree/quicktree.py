from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Quicktree_V0_1_0 = CommandToolBuilder(tool="quicktree", base_command=["quicktree"], inputs=[ToolInput(tag="in_in", input_type=File(optional=True), prefix="-in", doc=InputDocumentation(doc=": input file is a distance matrix in phylip format (m)\nor an alignment in stockholm format* (a, default)")), ToolInput(tag="in_out", input_type=String(optional=True), prefix="-out", doc=InputDocumentation(doc=": output is a distance matrix in phylip format (m) or\na tree in New Hampshire format")), ToolInput(tag="in_upgma", input_type=Boolean(optional=True), prefix="-upgma", doc=InputDocumentation(doc=": Use the UPGMA method to construct the tree\n(ignored for distance matrix outputs)")), ToolInput(tag="in_kimura", input_type=Boolean(optional=True), prefix="-kimura", doc=InputDocumentation(doc=": Use the kimura translation for pairwise distances\n(ignored for distance matrix inputs)")), ToolInput(tag="in_boot", input_type=String(optional=True), prefix="-boot", doc=InputDocumentation(doc=": Calcuate bootstrap values with n iterations\n(ignored for distance matrix outputs)")), ToolInput(tag="in_print_version_exit", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc=": print version and exit")), ToolInput(tag="in_options", input_type=Boolean(optional=True), prefix="-options", doc=InputDocumentation(doc="")), ToolInput(tag="in_input_file", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Quicktree_V0_1_0().translate("wdl", allow_empty_container=True)

