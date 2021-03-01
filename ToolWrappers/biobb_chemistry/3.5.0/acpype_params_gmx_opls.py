from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Acpype_Params_Gmx_Opls_V0_1_0 = CommandToolBuilder(tool="acpype_params_gmx_opls", base_command=["acpype_params_gmx_opls"], inputs=[ToolInput(tag="in_config", input_type=File(optional=True), prefix="--config", doc=InputDocumentation(doc="Configuration file")), ToolInput(tag="in_input_path", input_type=File(optional=True), prefix="--input_path", doc=InputDocumentation(doc="Path to the input file. Accepted formats: pdb, mdl, mol2.")), ToolInput(tag="in_output_path_itp", input_type=File(optional=True), prefix="--output_path_itp", doc=InputDocumentation(doc="Path to the ITP output file. Accepted formats: itp.")), ToolInput(tag="in_output_path_top", input_type=File(optional=True), prefix="--output_path_top", doc=InputDocumentation(doc="Path to the TOP output file. Accepted formats: top.\n"))], outputs=[ToolOutput(tag="out_output_path_itp", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_path_itp", type_hint=File()), doc=OutputDocumentation(doc="Path to the ITP output file. Accepted formats: itp.")), ToolOutput(tag="out_output_path_top", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_path_top", type_hint=File()), doc=OutputDocumentation(doc="Path to the TOP output file. Accepted formats: top.\n"))], container="quay.io/biocontainers/biobb_chemistry:3.5.0--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Acpype_Params_Gmx_Opls_V0_1_0().translate("wdl")

