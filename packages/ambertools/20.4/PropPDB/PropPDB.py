from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Proppdb_V0_1_0 = CommandToolBuilder(tool="PropPDB", base_command=["PropPDB"], inputs=[ToolInput(tag="in_structure_reassemble_pdb", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc=": the structure to reassemble (PDB format)")), ToolInput(tag="in_output_structure_pdb", input_type=Boolean(optional=True), prefix="-o", doc=InputDocumentation(doc=": the output structure (PDB format)")), ToolInput(tag="in_ix", input_type=Boolean(optional=True), prefix="-ix", doc=InputDocumentation(doc=": number of replicas along _X_ vector")), ToolInput(tag="in_iy", input_type=Boolean(optional=True), prefix="-iy", doc=InputDocumentation(doc=": number of replicas along _Y_ vector")), ToolInput(tag="in_iz", input_type=Boolean(optional=True), prefix="-iz", doc=InputDocumentation(doc=": number of replicas along _Z_ vector"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Proppdb_V0_1_0().translate("wdl", allow_empty_container=True)

