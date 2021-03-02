from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Acpype_Params_Ac_V0_1_0 = CommandToolBuilder(tool="acpype_params_ac", base_command=["acpype_params_ac"], inputs=[ToolInput(tag="in_config", input_type=File(optional=True), prefix="--config", doc=InputDocumentation(doc="Configuration file")), ToolInput(tag="in_input_path", input_type=File(optional=True), prefix="--input_path", doc=InputDocumentation(doc="Path to the input file. Accepted formats: pdb, mdl, mol2.")), ToolInput(tag="in_output_path_frc_mod", input_type=File(optional=True), prefix="--output_path_frcmod", doc=InputDocumentation(doc="Path to the FRCMOD output file. Accepted formats: frcmod.")), ToolInput(tag="in_output_path_in_pc_rd", input_type=File(optional=True), prefix="--output_path_inpcrd", doc=InputDocumentation(doc="Path to the INPCRD output file. Accepted formats: inpcrd.")), ToolInput(tag="in_output_path_lib", input_type=File(optional=True), prefix="--output_path_lib", doc=InputDocumentation(doc="Path to the LIB output file. Accepted formats: lib.")), ToolInput(tag="in_output_path_prm_top", input_type=File(optional=True), prefix="--output_path_prmtop", doc=InputDocumentation(doc="Path to the PRMTOP output file. Accepted formats: prmtop.\n"))], outputs=[ToolOutput(tag="out_output_path_frc_mod", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_path_frc_mod", type_hint=File()), doc=OutputDocumentation(doc="Path to the FRCMOD output file. Accepted formats: frcmod.")), ToolOutput(tag="out_output_path_in_pc_rd", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_path_in_pc_rd", type_hint=File()), doc=OutputDocumentation(doc="Path to the INPCRD output file. Accepted formats: inpcrd.")), ToolOutput(tag="out_output_path_lib", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_path_lib", type_hint=File()), doc=OutputDocumentation(doc="Path to the LIB output file. Accepted formats: lib.")), ToolOutput(tag="out_output_path_prm_top", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_path_prm_top", type_hint=File()), doc=OutputDocumentation(doc="Path to the PRMTOP output file. Accepted formats: prmtop.\n"))], container="quay.io/biocontainers/biobb_chemistry:3.5.0--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Acpype_Params_Ac_V0_1_0().translate("wdl")

