from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

O_Populate_Datasets_From_Vamps_Download_V0_1_0 = CommandToolBuilder(tool="o_populate_datasets_from_VAMPS_download", base_command=["o-populate-datasets-from-VAMPS-download"], inputs=[ToolInput(tag="in_tax_on", input_type=String(optional=True), prefix="--taxon", doc=InputDocumentation(doc="Isolate a particular taxon")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output file name\n"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output file name\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    O_Populate_Datasets_From_Vamps_Download_V0_1_0().translate("wdl", allow_empty_container=True)

