from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Acpype_Params_Cns_V0_1_0 = CommandToolBuilder(tool="acpype_params_cns", base_command=["acpype_params_cns"], inputs=[ToolInput(tag="in_config", input_type=File(optional=True), prefix="--config", doc=InputDocumentation(doc="Configuration file")), ToolInput(tag="in_input_path", input_type=File(optional=True), prefix="--input_path", doc=InputDocumentation(doc="Path to the input file. Accepted formats: pdb, mdl, mol2.")), ToolInput(tag="in_output_path_par", input_type=File(optional=True), prefix="--output_path_par", doc=InputDocumentation(doc="Path to the PAR output file. Accepted formats: par.")), ToolInput(tag="in_output_path_inp", input_type=File(optional=True), prefix="--output_path_inp", doc=InputDocumentation(doc="Path to the INP output file. Accepted formats: inp.")), ToolInput(tag="in_output_path_top", input_type=File(optional=True), prefix="--output_path_top", doc=InputDocumentation(doc="Path to the TOP output file. Accepted formats: top.\n"))], outputs=[ToolOutput(tag="out_output_path_par", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_path_par", type_hint=File()), doc=OutputDocumentation(doc="Path to the PAR output file. Accepted formats: par.")), ToolOutput(tag="out_output_path_inp", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_path_inp", type_hint=File()), doc=OutputDocumentation(doc="Path to the INP output file. Accepted formats: inp.")), ToolOutput(tag="out_output_path_top", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_path_top", type_hint=File()), doc=OutputDocumentation(doc="Path to the TOP output file. Accepted formats: top.\n"))], container="quay.io/biocontainers/biobb_chemistry:3.5.0--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Acpype_Params_Cns_V0_1_0().translate("wdl")

