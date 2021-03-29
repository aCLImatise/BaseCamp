from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Make_Ktaxonomy_Py_V0_1_0 = CommandToolBuilder(tool="make_ktaxonomy.py", base_command=["make_ktaxonomy.py"], inputs=[ToolInput(tag="in_nodes", input_type=File(optional=True), prefix="--nodes", doc=InputDocumentation(doc="nodes.dmp file from taxonomy")), ToolInput(tag="in_names", input_type=File(optional=True), prefix="--names", doc=InputDocumentation(doc="names.dmp file from taxonomy")), ToolInput(tag="in_seq_id_two_taxid", input_type=File(optional=True), prefix="--seqid2taxid", doc=InputDocumentation(doc="seqid2taxid.map file")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="output taxonomy file\n"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="output taxonomy file\n"))], container="quay.io/biocontainers/krakentools:1.0.1--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Make_Ktaxonomy_Py_V0_1_0().translate("wdl")

