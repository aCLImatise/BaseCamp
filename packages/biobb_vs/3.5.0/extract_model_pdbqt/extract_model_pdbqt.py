from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Extract_Model_Pdbqt_V0_1_0 = CommandToolBuilder(tool="extract_model_pdbqt", base_command=["extract_model_pdbqt"], inputs=[ToolInput(tag="in_config", input_type=File(optional=True), prefix="--config", doc=InputDocumentation(doc="Configuration file")), ToolInput(tag="in_input_pdb_qt_path", input_type=File(optional=True), prefix="--input_pdbqt_path", doc=InputDocumentation(doc="Input PDBQT file. Accepted formats: pdbqt.")), ToolInput(tag="in_output_pdb_qt_path", input_type=File(optional=True), prefix="--output_pdbqt_path", doc=InputDocumentation(doc="Output PDBQT file. Accepted formats: pdbqt.\n"))], outputs=[ToolOutput(tag="out_output_pdb_qt_path", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_pdb_qt_path", type_hint=File()), doc=OutputDocumentation(doc="Output PDBQT file. Accepted formats: pdbqt.\n"))], container="quay.io/biocontainers/biobb_vs:3.5.0--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Extract_Model_Pdbqt_V0_1_0().translate("wdl")

