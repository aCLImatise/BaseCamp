from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Graphlan_Annotate_Py_V0_1_0 = CommandToolBuilder(tool="graphlan_annotate.py", base_command=["graphlan_annotate.py"], inputs=[ToolInput(tag="in_an_not", input_type=File(optional=True), prefix="--annot", doc=InputDocumentation(doc="specify the annotation file")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="")), ToolInput(tag="in_input_tree", input_type=String(), position=0, doc=InputDocumentation(doc="the input tree in Newick, Nexus, PhyloXML or plain\ntext format")), ToolInput(tag="in_output_tree", input_type=String(), position=1, doc=InputDocumentation(doc="the output tree in PhyloXML format containing the\nnewly added annotations. If not specified, the input\ntree file will be overwritten"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Graphlan_Annotate_Py_V0_1_0().translate("wdl", allow_empty_container=True)

