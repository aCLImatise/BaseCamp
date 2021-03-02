from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, File, String

Sample_Reads_Randomly_Py_V0_1_0 = CommandToolBuilder(tool="sample_reads_randomly.py", base_command=["sample-reads-randomly.py"], inputs=[ToolInput(tag="in_info", input_type=Boolean(optional=True), prefix="--info", doc=InputDocumentation(doc="print citation information")), ToolInput(tag="in_num_reads", input_type=Int(optional=True), prefix="--num_reads", doc=InputDocumentation(doc="samples the number of sequences or pairs specified\nwith -N (default: 100000)")), ToolInput(tag="in_random_seed", input_type=Int(optional=True), prefix="--random-seed", doc=InputDocumentation(doc="Provide a random seed for the generator (default:\nNone)")), ToolInput(tag="in_force_single", input_type=Boolean(optional=True), prefix="--force_single", doc=InputDocumentation(doc="Ignore read pair information if present (default:\nFalse)")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Overwrite output file if it exits (default: False)")), ToolInput(tag="in_gzip", input_type=Boolean(optional=True), prefix="--gzip", doc=InputDocumentation(doc="Compress output using gzip (default: False)")), ToolInput(tag="in_bzip", input_type=Boolean(optional=True), prefix="--bzip", doc=InputDocumentation(doc="Compress output using bzip2 (default: False)")), ToolInput(tag="in_filenames", input_type=String(), position=0, doc=InputDocumentation(doc="optional arguments:"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Overwrite output file if it exits (default: False)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sample_Reads_Randomly_Py_V0_1_0().translate("wdl", allow_empty_container=True)

