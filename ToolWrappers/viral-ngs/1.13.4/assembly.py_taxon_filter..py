from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Assembly_Py_Taxon_Filter__V0_1_0 = CommandToolBuilder(tool="assembly.py_taxon_filter.", base_command=["assembly.py", "taxon_filter."], inputs=[ToolInput(tag="in_assembly_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_subcommand", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Assembly_Py_Taxon_Filter__V0_1_0().translate("wdl", allow_empty_container=True)

