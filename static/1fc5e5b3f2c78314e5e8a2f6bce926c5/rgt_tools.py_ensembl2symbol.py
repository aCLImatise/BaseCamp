from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Rgt_Tools_Py_Ensembl2Symbol_V0_1_0 = CommandToolBuilder(tool="rgt_tools.py_ensembl2symbol", base_command=["rgt-tools.py", "ensembl2symbol"], inputs=[ToolInput(tag="in_input_gene_list", input_type=String(optional=True), prefix="-i", doc=InputDocumentation(doc="Input gene list")), ToolInput(tag="in_output_gene_list", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="Output gene list")), ToolInput(tag="in_organism", input_type=Boolean(optional=True), prefix="-organism", doc=InputDocumentation(doc="Define the organism"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rgt_Tools_Py_Ensembl2Symbol_V0_1_0().translate("wdl", allow_empty_container=True)

