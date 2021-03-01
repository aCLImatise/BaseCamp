from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, String, File, Boolean

Gen_Headers_After_Merge_Priors_One_Comparate_Py_V0_1_0 = CommandToolBuilder(tool="gen_headers_after_merge_priors_one_comparate.py", base_command=["gen_headers_after_merge_priors_one_comparate.py"], inputs=[ToolInput(tag="in_output", input_type=Directory(optional=True), prefix="--output", doc=InputDocumentation(doc="Output directory for complete merged comparate files\nready for Bayesian")), ToolInput(tag="in_ase_count_table_collection_identifiers", input_type=String(optional=True), prefix="--collection_identifiers", doc=InputDocumentation(doc="ASE count table collection identifiers")), ToolInput(tag="in_ase_count_table_collection_filenames", input_type=String(optional=True), prefix="--collection_filenames", doc=InputDocumentation(doc="ASE count table collection filenames")), ToolInput(tag="in_design", input_type=File(optional=True), prefix="--design", doc=InputDocumentation(doc="Design file")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Print debugging output")), ToolInput(tag="in_collectionfilenames", input_type=String(), position=0, doc=InputDocumentation(doc="-collection_filenames")), ToolInput(tag="in_design_design", input_type=String(), position=1, doc=InputDocumentation(doc="-design DESIGN"))], outputs=[ToolOutput(tag="out_output", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output directory for complete merged comparate files\nready for Bayesian"))], container="quay.io/biocontainers/bayesase:21.1.13.1--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gen_Headers_After_Merge_Priors_One_Comparate_Py_V0_1_0().translate("wdl")

