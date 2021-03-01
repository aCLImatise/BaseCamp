from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, Boolean

Pybedtools_Annotate_V0_1_0 = CommandToolBuilder(tool="pybedtools_annotate", base_command=["pybedtools", "annotate"], inputs=[ToolInput(tag="in_downstream", input_type=Int(optional=True), prefix="--downstream", doc=InputDocumentation(doc="not specified only 2 colummns are added to the")), ToolInput(tag="in_file_to_annotate", input_type=File(optional=True), prefix="-a", doc=InputDocumentation(doc="file to annotate")), ToolInput(tag="in_file_with_annotations", input_type=File(optional=True), prefix="-b", doc=InputDocumentation(doc="file with annotations")), ToolInput(tag="in_report_distance", input_type=Boolean(optional=True), prefix="--report-distance", doc=InputDocumentation(doc="report the distance, not just the genes"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pybedtools_Annotate_V0_1_0().translate("wdl", allow_empty_container=True)

