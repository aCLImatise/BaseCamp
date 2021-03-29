from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean, Directory

Iu_Demultiplex_V0_1_0 = CommandToolBuilder(tool="iu_demultiplex", base_command=["iu-demultiplex"], inputs=[ToolInput(tag="in_sample_barcode_mapping", input_type=File(optional=True), prefix="--sample-barcode-mapping", doc=InputDocumentation(doc="TAB-delimited file of sample-barcode associations")), ToolInput(tag="in_r_one", input_type=Int(optional=True), prefix="--r1", doc=InputDocumentation(doc="FASTQ file for R1")), ToolInput(tag="in_r_two", input_type=Int(optional=True), prefix="--r2", doc=InputDocumentation(doc="FASTQ file for R2.")), ToolInput(tag="in_index", input_type=File(optional=True), prefix="--index", doc=InputDocumentation(doc="Index file (I1)")), ToolInput(tag="in_rev_comp_barcodes", input_type=Boolean(optional=True), prefix="--rev-comp-barcodes", doc=InputDocumentation(doc="Reverse-complement barcodes before processing")), ToolInput(tag="in_output_dir", input_type=Directory(optional=True), prefix="--output-dir", doc=InputDocumentation(doc="Directory for output storage\n"))], outputs=[ToolOutput(tag="out_output_dir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_dir", type_hint=File()), doc=OutputDocumentation(doc="Directory for output storage\n"))], container="quay.io/biocontainers/illumina-utils:2.11--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Iu_Demultiplex_V0_1_0().translate("wdl")

