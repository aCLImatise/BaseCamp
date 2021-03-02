from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Map_To_Slim_Py_V0_1_0 = CommandToolBuilder(tool="map_to_slim.py", base_command=["map_to_slim.py"], inputs=[ToolInput(tag="in_term", input_type=String(optional=True), prefix="--term", doc=InputDocumentation(doc="a term (association id) to map to slim IDs. This can\nnot be used together with --association_file")), ToolInput(tag="in_association_file", input_type=File(optional=True), prefix="--association_file", doc=InputDocumentation(doc="the file of protein products and their associations to\nbe mapped to GO slim terms. This can not be used\ntogether with --term")), ToolInput(tag="in_slim_out", input_type=String(optional=True), prefix="--slim_out", doc=InputDocumentation(doc="One of `direct` or `all`. Defines whether the output\nshould contain all slim terms (all ancestors) or only\ndirect slim terms (only direct ancestors)\n")), ToolInput(tag="in_go_obo_file", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_go_slim_obo_file", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/goatools:1.0.15--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Map_To_Slim_Py_V0_1_0().translate("wdl")

