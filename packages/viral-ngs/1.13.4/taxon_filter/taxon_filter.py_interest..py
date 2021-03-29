from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Taxon_Filter_Py_Interest__V0_1_0 = CommandToolBuilder(tool="taxon_filter.py_interest.", base_command=["taxon_filter.py", "interest."], inputs=[ToolInput(tag="in_tax_on_filter_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_subcommand", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Taxon_Filter_Py_Interest__V0_1_0().translate("wdl", allow_empty_container=True)

