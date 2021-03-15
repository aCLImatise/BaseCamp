from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Autodock_Vina_V0_1_0 = CommandToolBuilder(tool="autodock_vina", base_command=["autodock_vina"], inputs=[ToolInput(tag="in_config", input_type=File(optional=True), prefix="--config", doc=InputDocumentation(doc="Configuration file")), ToolInput(tag="in_output_log_path", input_type=File(optional=True), prefix="--output_log_path", doc=InputDocumentation(doc="Path to the log file. Accepted formats: log.")), ToolInput(tag="in_input_ligand_pdb_qt_path", input_type=File(optional=True), prefix="--input_ligand_pdbqt_path", doc=InputDocumentation(doc="Path to the input PDBQT ligand. Accepted formats: pdbqt.")), ToolInput(tag="in_input_receptor_pdb_qt_path", input_type=File(optional=True), prefix="--input_receptor_pdbqt_path", doc=InputDocumentation(doc="Path to the input PDBQT receptor. Accepted formats: pdbqt.")), ToolInput(tag="in_input_box_path", input_type=File(optional=True), prefix="--input_box_path", doc=InputDocumentation(doc="Path to the PDB containig the residues belonging to the binding site. Accepted formats: pdb.")), ToolInput(tag="in_output_pdb_qt_path", input_type=File(optional=True), prefix="--output_pdbqt_path", doc=InputDocumentation(doc="Path to the output PDBQT file. Accepted formats: pdbqt.\n"))], outputs=[ToolOutput(tag="out_output_log_path", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_log_path", type_hint=File()), doc=OutputDocumentation(doc="Path to the log file. Accepted formats: log.")), ToolOutput(tag="out_output_pdb_qt_path", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_pdb_qt_path", type_hint=File()), doc=OutputDocumentation(doc="Path to the output PDBQT file. Accepted formats: pdbqt.\n"))], container="quay.io/biocontainers/biobb_vs:3.5.0--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Autodock_Vina_V0_1_0().translate("wdl")

