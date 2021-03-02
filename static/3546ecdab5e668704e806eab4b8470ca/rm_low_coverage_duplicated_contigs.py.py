from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Float, Int, Boolean, File, Directory

Rm_Low_Coverage_Duplicated_Contigs_Py_V0_1_0 = CommandToolBuilder(tool="rm_low_coverage_duplicated_contigs.py", base_command=["rm_low_coverage_duplicated_contigs.py"], inputs=[ToolInput(tag="in_cov_t", input_type=Float(optional=True), prefix="--cov-t", doc=InputDocumentation(doc="With ratio (coverage of query/coverage of subject)\nbelow which, the query would be exposed to discarded.\nDefault: 0.12")), ToolInput(tag="in_len_t", input_type=Int(optional=True), prefix="--len-t", doc=InputDocumentation(doc="With overlap (length of hit of query/ length of query)\nabove which, the query would be exposed to discarded.\nDefault: 0.9")), ToolInput(tag="in_blur", input_type=Boolean(optional=True), prefix="--blur", doc=InputDocumentation(doc="Replace hit low-coverage bases with N.")), ToolInput(tag="in_keep_temp", input_type=Boolean(optional=True), prefix="--keep-temp", doc=InputDocumentation(doc="Keep temp blast files.")), ToolInput(tag="in_which_blast", input_type=File(optional=True), prefix="--which-blast", doc=InputDocumentation(doc="Assign the path to BLAST binary files if not added to\nthe path.")), ToolInput(tag="in_output_directory_default", input_type=Directory(optional=True), prefix="-o", doc=InputDocumentation(doc="Output directory. Default: along with the original")), ToolInput(tag="in_file", input_type=File(), position=0, doc=InputDocumentation(doc="-t THREADS, --threads=THREADS"))], outputs=[ToolOutput(tag="out_output_directory_default", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_directory_default", type_hint=File()), doc=OutputDocumentation(doc="Output directory. Default: along with the original"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rm_Low_Coverage_Duplicated_Contigs_Py_V0_1_0().translate("wdl", allow_empty_container=True)

