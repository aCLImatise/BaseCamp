from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String, Directory

Combine_Count_Tables_Py_V0_1_0 = CommandToolBuilder(tool="combine_count_tables.py", base_command=["combine_count_tables.py"], inputs=[ToolInput(tag="in_design", input_type=File(optional=True), prefix="--design", doc=InputDocumentation(doc="Alignment Design File containing fastq fqNames and\nsampleIDs [Required]")), ToolInput(tag="in_sim", input_type=Boolean(optional=True), prefix="--sim", doc=InputDocumentation(doc="Select if this is a simulation dataset")), ToolInput(tag="in_bed", input_type=File(optional=True), prefix="--bed", doc=InputDocumentation(doc="Full path to the bed file [Required]")), ToolInput(tag="in_collection_identifiers", input_type=String(optional=True), prefix="--collection_identifiers", doc=InputDocumentation(doc="Input original names [Required]")), ToolInput(tag="in_collection_filenames", input_type=String(optional=True), prefix="--collection_filenames", doc=InputDocumentation(doc="Input galaxy names [Required]")), ToolInput(tag="in_begin", input_type=File(optional=True), prefix="--begin", doc=InputDocumentation(doc="Start point in design file [Optional]")), ToolInput(tag="in_end", input_type=File(optional=True), prefix="--end", doc=InputDocumentation(doc="End point in design file [Optional]")), ToolInput(tag="in_out_design", input_type=File(optional=True), prefix="--outdesign", doc=InputDocumentation(doc="Output design file name with full path in galaxy\n[Required]")), ToolInput(tag="in_outdir", input_type=Directory(optional=True), prefix="--outdir", doc=InputDocumentation(doc="Output directory for summed count table files\n[Required]\n"))], outputs=[ToolOutput(tag="out_out_design", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_design", type_hint=File()), doc=OutputDocumentation(doc="Output design file name with full path in galaxy\n[Required]")), ToolOutput(tag="out_outdir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_outdir", type_hint=File()), doc=OutputDocumentation(doc="Output directory for summed count table files\n[Required]\n"))], container="quay.io/biocontainers/bayesase:21.1.13.1--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Combine_Count_Tables_Py_V0_1_0().translate("wdl")

