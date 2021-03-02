from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Rsat_Get_Orthologs_Compara_V0_1_0 = CommandToolBuilder(tool="rsat_get_orthologs_compara", base_command=["rsat", "get-orthologs-compara"], inputs=[ToolInput(tag="in_ref_org", input_type=String(optional=True), prefix="-ref_org", doc=InputDocumentation(doc="\")), ToolInput(tag="in_get_orthologs_compara", input_type=String(), position=0, doc=InputDocumentation(doc="[1mDESCRIPTION[0m")), ToolInput(tag="in_ignored_dot", input_type=String(), position=0, doc=InputDocumentation(doc="As for genes, the reference organisms can also be entered on the command")), ToolInput(tag="in_organisms_dot", input_type=String(), position=0, doc=InputDocumentation(doc="get-orthologs-compara -v 1 -supported_organisms \")), ToolInput(tag="in_one_two_one_dot", input_type=Int(), position=0, doc=InputDocumentation(doc="Note that in Compara polyploids such as wheat are separated by")), ToolInput(tag="in_mdefinitionm_term_homoeologous", input_type=Int(), position=0, doc=InputDocumentation(doc="[33mDefinition[0m: the term homoeologous, also spelled homeologous, is"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rsat_Get_Orthologs_Compara_V0_1_0().translate("wdl", allow_empty_container=True)

