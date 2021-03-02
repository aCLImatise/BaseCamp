from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Chembl_Ids_V0_1_0 = CommandToolBuilder(tool="chembl_ids", base_command=["chembl_ids"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="input file, standard input by default")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="output file, standard output by default")), ToolInput(tag="in_format", input_type=File(optional=True), prefix="--format", doc=InputDocumentation(doc="output file format, can be chosen from 5 options:\n[chembl_id, smi, sdf, inchi, inchi_key]")), ToolInput(tag="in_single", input_type=Boolean(optional=True), prefix="--single", doc=InputDocumentation(doc="if the name is resolved into more than one result,\nshow only the most relevant one")), ToolInput(tag="in_parent", input_type=Boolean(optional=True), prefix="--parent", doc=InputDocumentation(doc="instead of actual results, fetch their parents")), ToolInput(tag="in_human", input_type=Boolean(optional=True), prefix="--Human", doc=InputDocumentation(doc="human readable output: prints header and first column\nwith original names\n"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="output file, standard output by default")), ToolOutput(tag="out_format", output_type=File(optional=True), selector=InputSelector(input_to_select="in_format", type_hint=File()), doc=OutputDocumentation(doc="output file format, can be chosen from 5 options:\n[chembl_id, smi, sdf, inchi, inchi_key]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Chembl_Ids_V0_1_0().translate("wdl", allow_empty_container=True)

