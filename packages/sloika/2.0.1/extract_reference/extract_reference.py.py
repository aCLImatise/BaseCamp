from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean, String

Extract_Reference_Py_V0_1_0 = CommandToolBuilder(tool="extract_reference.py", base_command=["extract_reference.py"], inputs=[ToolInput(tag="in_input_strand_list", input_type=File(optional=True), prefix="--input_strand_list", doc=InputDocumentation(doc="Strand summary file containing subset (default: None)")), ToolInput(tag="in_jobs", input_type=Int(optional=True), prefix="--jobs", doc=InputDocumentation(doc="Number of threads to use when processing data\n(default: 1)")), ToolInput(tag="in_limit", input_type=Int(optional=True), prefix="--limit", doc=InputDocumentation(doc="Limit number of reads to process (default: None)")), ToolInput(tag="in_no_overwrite", input_type=Boolean(optional=True), prefix="--no-overwrite", doc=InputDocumentation(doc="Whether to overwrite any output files (Default: --no-\noverwrite) (default: False)")), ToolInput(tag="in_section", input_type=String(optional=True), prefix="--section", doc=InputDocumentation(doc="Section to call (default: template)\n")), ToolInput(tag="in_input_folder", input_type=String(), position=0, doc=InputDocumentation(doc="Directory containing single-read fast5 files")), ToolInput(tag="in_output", input_type=String(), position=1, doc=InputDocumentation(doc="Output fasta file"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Extract_Reference_Py_V0_1_0().translate("wdl", allow_empty_container=True)

