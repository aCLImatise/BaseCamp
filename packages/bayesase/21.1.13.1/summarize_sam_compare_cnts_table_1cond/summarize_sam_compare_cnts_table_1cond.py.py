from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, String, File, Int, Boolean

Summarize_Sam_Compare_Cnts_Table_1Cond_Py_V0_1_0 = CommandToolBuilder(tool="summarize_sam_compare_cnts_table_1cond.py", base_command=["summarize_sam_compare_cnts_table_1cond.py"], inputs=[ToolInput(tag="in_output", input_type=Directory(optional=True), prefix="--output", doc=InputDocumentation(doc="Output directory for filtered ase counts")), ToolInput(tag="in_input_original_names", input_type=String(optional=True), prefix="--collection_identifiers", doc=InputDocumentation(doc="Input original names [Required]")), ToolInput(tag="in_collection_filenames", input_type=String(optional=True), prefix="--collection_filenames", doc=InputDocumentation(doc="Input galaxy names [Required]")), ToolInput(tag="in_design", input_type=File(optional=True), prefix="--design", doc=InputDocumentation(doc="Design file")), ToolInput(tag="in_parent_one", input_type=Int(optional=True), prefix="--parent1", doc=InputDocumentation(doc="Column containing parent 1 genome, G1")), ToolInput(tag="in_parent_two", input_type=Int(optional=True), prefix="--parent2", doc=InputDocumentation(doc="Column containing parent 2 genome, G2")), ToolInput(tag="in_sample_col", input_type=String(optional=True), prefix="--sampleCol", doc=InputDocumentation(doc="Column containing sample names, no rep info")), ToolInput(tag="in_sample_id_col", input_type=String(optional=True), prefix="--sampleIDCol", doc=InputDocumentation(doc="Column containing sampleID names, has rep info")), ToolInput(tag="in_apn", input_type=String(optional=True), prefix="--apn", doc=InputDocumentation(doc="APN (average per nucleotide) value for flagging a\nfeature as found and analyzable")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Print debugging output")), ToolInput(tag="in_collectionfilenames", input_type=String(), position=0, doc=InputDocumentation(doc="-collection_filenames"))], outputs=[ToolOutput(tag="out_output", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output directory for filtered ase counts"))], container="quay.io/biocontainers/bayesase:21.1.13.1--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Summarize_Sam_Compare_Cnts_Table_1Cond_Py_V0_1_0().translate("wdl")

