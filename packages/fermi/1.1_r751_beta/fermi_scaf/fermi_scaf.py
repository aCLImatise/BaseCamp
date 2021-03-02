from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String

Fermi_Scaf_V0_1_0 = CommandToolBuilder(tool="fermi_scaf", base_command=["fermi", "scaf"], inputs=[ToolInput(tag="in_number_of_threads", input_type=Int(optional=True), prefix="-t", doc=InputDocumentation(doc="number of threads [1]")), ToolInput(tag="in_minimum_number_supporting", input_type=Int(optional=True), prefix="-m", doc=InputDocumentation(doc="minimum number of supporting reads [5]")), ToolInput(tag="in_print_links_unitigs", input_type=Boolean(optional=True), prefix="-P", doc=InputDocumentation(doc="print the links between unitigs")), ToolInput(tag="in_in_dot_fmd", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_in_dot_remapped_dot_mag", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_avg", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_std", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fermi_Scaf_V0_1_0().translate("wdl", allow_empty_container=True)

