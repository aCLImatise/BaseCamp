from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, File, String

Extract_Partitions_Py_V0_1_0 = CommandToolBuilder(tool="extract_partitions.py", base_command=["extract-partitions.py"], inputs=[ToolInput(tag="in_info", input_type=Boolean(optional=True), prefix="--info", doc=InputDocumentation(doc="print citation information")), ToolInput(tag="in_max_size", input_type=Int(optional=True), prefix="--max-size", doc=InputDocumentation(doc="Max group size (n sequences) (default: 1000000)")), ToolInput(tag="in_min_partition_size", input_type=Int(optional=True), prefix="--min-partition-size", doc=InputDocumentation(doc="Minimum partition size worth keeping (default: 5)")), ToolInput(tag="in_no_output_groups", input_type=Boolean(optional=True), prefix="--no-output-groups", doc=InputDocumentation(doc="Do not actually output groups files. (default: True)")), ToolInput(tag="in_output_unassigned", input_type=Boolean(optional=True), prefix="--output-unassigned", doc=InputDocumentation(doc="Output unassigned sequences, too (default: False)")), ToolInput(tag="in_force", input_type=File(optional=True), prefix="--force", doc=InputDocumentation(doc="Overwrite output file if it exists (default: False)")), ToolInput(tag="in_gzip", input_type=Boolean(optional=True), prefix="--gzip", doc=InputDocumentation(doc="Compress output using gzip (default: False)")), ToolInput(tag="in_bzip", input_type=Boolean(optional=True), prefix="--bzip", doc=InputDocumentation(doc="Compress output using bzip2 (default: False)")), ToolInput(tag="in_output_filename_prefix", input_type=String(), position=0, doc=InputDocumentation(doc="input_partition_filename"))], outputs=[ToolOutput(tag="out_force", output_type=File(optional=True), selector=InputSelector(input_to_select="in_force", type_hint=File()), doc=OutputDocumentation(doc="Overwrite output file if it exists (default: False)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Extract_Partitions_Py_V0_1_0().translate("wdl", allow_empty_container=True)

