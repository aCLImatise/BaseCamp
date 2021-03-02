from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Directory

Merge_Priors_To_Comparate_Py_V0_1_0 = CommandToolBuilder(tool="merge_priors_to_comparate.py", base_command=["merge_priors_to_comparate.py"], inputs=[ToolInput(tag="in_design", input_type=File(optional=True), prefix="--design", doc=InputDocumentation(doc="Design file")), ToolInput(tag="in_collection_one_identifiers", input_type=Int(optional=True), prefix="--collection1_identifiers", doc=InputDocumentation(doc="ASE count table collection identifiers")), ToolInput(tag="in_collection_one_filenames", input_type=Int(optional=True), prefix="--collection1_filenames", doc=InputDocumentation(doc="ASE count table collection filenames")), ToolInput(tag="in_collection_two_identifiers", input_type=Int(optional=True), prefix="--collection2_identifiers", doc=InputDocumentation(doc="Prior count table collection identifiers")), ToolInput(tag="in_collection_two_filenames", input_type=Int(optional=True), prefix="--collection2_filenames", doc=InputDocumentation(doc="ASE count table collection filenames")), ToolInput(tag="in_out", input_type=Directory(optional=True), prefix="--out", doc=InputDocumentation(doc="Output directory for complete merged comparate files\nready for Bayesian\n"))], outputs=[ToolOutput(tag="out_out", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="Output directory for complete merged comparate files\nready for Bayesian\n"))], container="quay.io/biocontainers/bayesase:21.1.13.1--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Merge_Priors_To_Comparate_Py_V0_1_0().translate("wdl")

