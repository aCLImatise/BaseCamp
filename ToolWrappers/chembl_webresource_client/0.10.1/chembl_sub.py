from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Chembl_Sub_V0_1_0 = CommandToolBuilder(tool="chembl_sub", base_command=["chembl_sub"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="input file with ChEMBL IDs")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="output file with ChEMBL IDs of similar molecules")), ToolInput(tag="in_source_format", input_type=File(optional=True), prefix="--source-format", doc=InputDocumentation(doc="input file format. Can be one of 3: chembl_id (a comma\nseparated list of chembl IDs), sdf: (MDL molfile), smi\n(file containing smiles)")), ToolInput(tag="in_destination_format", input_type=File(optional=True), prefix="--destination-format", doc=InputDocumentation(doc="output file format. can be chosen from 5 options:\n[chembl_id, smi, sdf, inchi, inchi_key]")), ToolInput(tag="in_human", input_type=Boolean(optional=True), prefix="--Human", doc=InputDocumentation(doc="human readable output: prints header and first column\nwith original names\n")), ToolInput(tag="in_ch_embl_sim", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="output file with ChEMBL IDs of similar molecules")), ToolOutput(tag="out_destination_format", output_type=File(optional=True), selector=InputSelector(input_to_select="in_destination_format", type_hint=File()), doc=OutputDocumentation(doc="output file format. can be chosen from 5 options:\n[chembl_id, smi, sdf, inchi, inchi_key]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Chembl_Sub_V0_1_0().translate("wdl", allow_empty_container=True)

