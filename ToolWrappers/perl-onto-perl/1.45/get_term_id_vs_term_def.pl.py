from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Get_Term_Id_Vs_Term_Def_Pl_V0_1_0 = CommandToolBuilder(tool="get_term_id_vs_term_def.pl", base_command=["get_term_id_vs_term_def.pl"], inputs=[ToolInput(tag="in_obo_input_file", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="OBO input file"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Get_Term_Id_Vs_Term_Def_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

