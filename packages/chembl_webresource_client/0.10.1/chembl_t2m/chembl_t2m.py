from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, Int

Chembl_T2M_V0_1_0 = CommandToolBuilder(tool="chembl_t2m", base_command=["chembl_t2m"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="input file, standard input by default")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="output file, standard output by default")), ToolInput(tag="in_destination_format", input_type=File(optional=True), prefix="--destination-format", doc=InputDocumentation(doc="output file format. can be chosen from 3 options:\n[sdf, smi, chembl_id]")), ToolInput(tag="in_human", input_type=Boolean(optional=True), prefix="--Human", doc=InputDocumentation(doc="human readable output: prints header and first column\nwith original names")), ToolInput(tag="in_parent", input_type=Boolean(optional=True), prefix="--parent", doc=InputDocumentation(doc="when fetching compounds include their parents as well")), ToolInput(tag="in_chunk_size", input_type=Int(optional=True), prefix="--chunk-size", doc=InputDocumentation(doc="Size of chunk of data retrieved from API\n"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="output file, standard output by default")), ToolOutput(tag="out_destination_format", output_type=File(optional=True), selector=InputSelector(input_to_select="in_destination_format", type_hint=File()), doc=OutputDocumentation(doc="output file format. can be chosen from 3 options:\n[sdf, smi, chembl_id]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Chembl_T2M_V0_1_0().translate("wdl", allow_empty_container=True)

