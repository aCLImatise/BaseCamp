from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Bed2Bedgraph_Pl_V0_1_0 = CommandToolBuilder(tool="bed2bedGraph.pl", base_command=["bed2bedGraph.pl"], inputs=[ToolInput(tag="in_bed_file_conversion", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="BED file for conversion.")), ToolInput(tag="in_file_containing_sizes", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="File containing chromosome sizes")), ToolInput(tag="in_type_bed_file", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc="Type of bed file (e.g. sample name, replicate name, condition, ...)")), ToolInput(tag="in_file_standard_bed", input_type=Boolean(optional=True), prefix="-a", doc=InputDocumentation(doc="Whether file is a standard bed or extended bed, 'extended' for\nextended bed")), ToolInput(tag="in_man", input_type=Boolean(optional=True), prefix="--man", doc=InputDocumentation(doc="Prints the manual page and exits\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bed2Bedgraph_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

