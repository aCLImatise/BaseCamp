from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, String, File, Boolean

Merge_Comparates_Generate_Bayesian_Headers_Py_V0_1_0 = CommandToolBuilder(tool="merge_comparates_generate_bayesian_headers.py", base_command=["merge_comparates_generate_bayesian_headers.py"], inputs=[ToolInput(tag="in_output", input_type=Directory(optional=True), prefix="--output", doc=InputDocumentation(doc="Output directory for complete merged comparate files\nready for Bayesian")), ToolInput(tag="in_ase_count_table_collection_identifiers", input_type=String(optional=True), prefix="--collection_identifiers", doc=InputDocumentation(doc="ASE count table collection identifiers")), ToolInput(tag="in_collection_filenames", input_type=String(optional=True), prefix="--collection_filenames", doc=InputDocumentation(doc="ASE count table collection filenames")), ToolInput(tag="in_design", input_type=File(optional=True), prefix="--design", doc=InputDocumentation(doc="Design file")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Print debugging output")), ToolInput(tag="in_collectionfilenames", input_type=String(), position=0, doc=InputDocumentation(doc="-collection_filenames"))], outputs=[ToolOutput(tag="out_output", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output directory for complete merged comparate files\nready for Bayesian"))], container="quay.io/biocontainers/bayesase:21.1.13.1--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Merge_Comparates_Generate_Bayesian_Headers_Py_V0_1_0().translate("wdl")

