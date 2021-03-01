from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, File, String, Boolean

Calculate_Priors_Ase_Count_Tables_Py_V0_1_0 = CommandToolBuilder(tool="calculate_priors_ase_count_tables.py", base_command=["calculate_priors_ase_count_tables.py"], inputs=[ToolInput(tag="in_output", input_type=Directory(optional=True), prefix="--output", doc=InputDocumentation(doc="Output directory for filtered ase counts")), ToolInput(tag="in_design", input_type=File(optional=True), prefix="--design", doc=InputDocumentation(doc="Design file")), ToolInput(tag="in_collection_identifiers", input_type=String(optional=True), prefix="--collection_identifiers", doc=InputDocumentation(doc="Input original names [Required]")), ToolInput(tag="in_collection_filenames", input_type=String(optional=True), prefix="--collection_filenames", doc=InputDocumentation(doc="Input galaxy names [Required]")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Print debugging output"))], outputs=[ToolOutput(tag="out_output", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output directory for filtered ase counts"))], container="quay.io/biocontainers/bayesase:21.1.13.1--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Calculate_Priors_Ase_Count_Tables_Py_V0_1_0().translate("wdl")

